
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rvt_qpn_table {unsigned int flags; int last; int incr; int nmaps; struct rvt_qpn_map* map; int lock; } ;
struct rvt_qpn_map {int page; } ;
struct TYPE_4__ {int qos_shift; } ;
struct TYPE_3__ {int (* alloc_qpn ) (struct rvt_dev_info*,struct rvt_qpn_table*,int,int) ;} ;
struct rvt_dev_info {TYPE_2__ dparms; TYPE_1__ driver_f; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int BIT (int) ;
 int EINVAL ;
 int ENOMEM ;
 int IB_QPT_GSI ;
 int IB_QPT_SMI ;
 int RVT_BITS_PER_PAGE ;
 int RVT_BITS_PER_PAGE_MASK ;
 int RVT_QPNMAP_ENTRIES ;
 int RVT_QPN_MAX ;
 int WARN_ON (int) ;
 int get_map_page (struct rvt_qpn_table*,struct rvt_qpn_map*) ;
 int mk_qpn (struct rvt_qpn_table*,struct rvt_qpn_map*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rvt_dev_info*,struct rvt_qpn_table*,int,int) ;
 int test_and_set_bit (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int alloc_qpn(struct rvt_dev_info *rdi, struct rvt_qpn_table *qpt,
       enum ib_qp_type type, u8 port_num)
{
 u32 i, offset, max_scan, qpn;
 struct rvt_qpn_map *map;
 u32 ret;

 if (rdi->driver_f.alloc_qpn)
  return rdi->driver_f.alloc_qpn(rdi, qpt, type, port_num);

 if (type == IB_QPT_SMI || type == IB_QPT_GSI) {
  unsigned n;

  ret = type == IB_QPT_GSI;
  n = 1 << (ret + 2 * (port_num - 1));
  spin_lock(&qpt->lock);
  if (qpt->flags & n)
   ret = -EINVAL;
  else
   qpt->flags |= n;
  spin_unlock(&qpt->lock);
  goto bail;
 }

 qpn = qpt->last + qpt->incr;
 if (qpn >= RVT_QPN_MAX)
  qpn = qpt->incr | ((qpt->last & 1) ^ 1);

 offset = qpn & RVT_BITS_PER_PAGE_MASK;
 map = &qpt->map[qpn / RVT_BITS_PER_PAGE];
 max_scan = qpt->nmaps - !offset;
 for (i = 0;;) {
  if (unlikely(!map->page)) {
   get_map_page(qpt, map);
   if (unlikely(!map->page))
    break;
  }
  do {
   if (!test_and_set_bit(offset, map->page)) {
    qpt->last = qpn;
    ret = qpn;
    goto bail;
   }
   offset += qpt->incr;




   qpn = mk_qpn(qpt, map, offset);
  } while (offset < RVT_BITS_PER_PAGE && qpn < RVT_QPN_MAX);





  if (++i > max_scan) {
   if (qpt->nmaps == RVT_QPNMAP_ENTRIES)
    break;
   map = &qpt->map[qpt->nmaps++];

   offset = qpt->incr | (offset & 1);
  } else if (map < &qpt->map[qpt->nmaps]) {
   ++map;

   offset = qpt->incr | (offset & 1);
  } else {
   map = &qpt->map[0];

   offset = qpt->incr | ((offset & 1) ^ 1);
  }

  WARN_ON(rdi->dparms.qos_shift > 1 &&
   offset & ((BIT(rdi->dparms.qos_shift - 1) - 1) << 1));
  qpn = mk_qpn(qpt, map, offset);
 }

 ret = -ENOMEM;

bail:
 return ret;
}

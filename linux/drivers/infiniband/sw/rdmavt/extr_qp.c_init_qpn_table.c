
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rvt_qpn_table {int incr; int nmaps; struct rvt_qpn_map* map; int last; int lock; } ;
struct rvt_qpn_map {int page; } ;
struct TYPE_2__ {int qpn_res_end; int qpn_res_start; int qpn_inc; int qos_shift; int qpn_start; } ;
struct rvt_dev_info {TYPE_1__ dparms; } ;


 int EINVAL ;
 int ENOMEM ;
 int RVT_BITS_PER_PAGE ;
 int RVT_BITS_PER_PAGE_MASK ;
 int get_map_page (struct rvt_qpn_table*,struct rvt_qpn_map*) ;
 int rvt_pr_info (struct rvt_dev_info*,char*,int,int) ;
 int set_bit (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int init_qpn_table(struct rvt_dev_info *rdi, struct rvt_qpn_table *qpt)
{
 u32 offset, i;
 struct rvt_qpn_map *map;
 int ret = 0;

 if (!(rdi->dparms.qpn_res_end >= rdi->dparms.qpn_res_start))
  return -EINVAL;

 spin_lock_init(&qpt->lock);

 qpt->last = rdi->dparms.qpn_start;
 qpt->incr = rdi->dparms.qpn_inc << rdi->dparms.qos_shift;
 qpt->nmaps = rdi->dparms.qpn_res_start / RVT_BITS_PER_PAGE;


 offset = rdi->dparms.qpn_res_start & RVT_BITS_PER_PAGE_MASK;


 map = &qpt->map[qpt->nmaps];

 rvt_pr_info(rdi, "Reserving QPNs from 0x%x to 0x%x for non-verbs use\n",
      rdi->dparms.qpn_res_start, rdi->dparms.qpn_res_end);
 for (i = rdi->dparms.qpn_res_start; i <= rdi->dparms.qpn_res_end; i++) {
  if (!map->page) {
   get_map_page(qpt, map);
   if (!map->page) {
    ret = -ENOMEM;
    break;
   }
  }
  set_bit(offset, map->page);
  offset++;
  if (offset == RVT_BITS_PER_PAGE) {

   qpt->nmaps++;
   map++;
   offset = 0;
  }
 }
 return ret;
}

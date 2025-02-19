
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rvt_wss {int dummy; } ;
struct rvt_sge {scalar_t__ vaddr; } ;
struct rvt_sge_state {struct rvt_sge sge; } ;
struct TYPE_3__ {int device; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct TYPE_4__ {unsigned int sge_copy_mode; } ;
struct rvt_dev_info {TYPE_2__ dparms; struct rvt_wss* wss; } ;


 int PAGE_SIZE ;
 unsigned int RVT_SGE_COPY_ADAPTIVE ;
 unsigned int RVT_SGE_COPY_CACHELESS ;
 int WARN_ON_ONCE (int) ;
 int cacheless_memcpy (scalar_t__,void*,int) ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 int memcpy (scalar_t__,void*,int) ;
 int rvt_get_sge_length (struct rvt_sge*,int) ;
 int rvt_update_sge (struct rvt_sge_state*,int,int) ;
 scalar_t__ unlikely (int) ;
 int wss_advance_clean_counter (struct rvt_wss*) ;
 int wss_exceeds_threshold (struct rvt_wss*) ;
 int wss_insert (struct rvt_wss*,scalar_t__) ;

void rvt_copy_sge(struct rvt_qp *qp, struct rvt_sge_state *ss,
    void *data, u32 length,
    bool release, bool copy_last)
{
 struct rvt_sge *sge = &ss->sge;
 int i;
 bool in_last = 0;
 bool cacheless_copy = 0;
 struct rvt_dev_info *rdi = ib_to_rvt(qp->ibqp.device);
 struct rvt_wss *wss = rdi->wss;
 unsigned int sge_copy_mode = rdi->dparms.sge_copy_mode;

 if (sge_copy_mode == RVT_SGE_COPY_CACHELESS) {
  cacheless_copy = length >= PAGE_SIZE;
 } else if (sge_copy_mode == RVT_SGE_COPY_ADAPTIVE) {
  if (length >= PAGE_SIZE) {





   wss_insert(wss, sge->vaddr);
   if (length >= (2 * PAGE_SIZE))
    wss_insert(wss, (sge->vaddr + PAGE_SIZE));

   cacheless_copy = wss_exceeds_threshold(wss);
  } else {
   wss_advance_clean_counter(wss);
  }
 }

 if (copy_last) {
  if (length > 8) {
   length -= 8;
  } else {
   copy_last = 0;
   in_last = 1;
  }
 }

again:
 while (length) {
  u32 len = rvt_get_sge_length(sge, length);

  WARN_ON_ONCE(len == 0);
  if (unlikely(in_last)) {

   for (i = 0; i < len; i++)
    ((u8 *)sge->vaddr)[i] = ((u8 *)data)[i];
  } else if (cacheless_copy) {
   cacheless_memcpy(sge->vaddr, data, len);
  } else {
   memcpy(sge->vaddr, data, len);
  }
  rvt_update_sge(ss, len, release);
  data += len;
  length -= len;
 }

 if (copy_last) {
  copy_last = 0;
  in_last = 1;
  length = 8;
  goto again;
 }
}

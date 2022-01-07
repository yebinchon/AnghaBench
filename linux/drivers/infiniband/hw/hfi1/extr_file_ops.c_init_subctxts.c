
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_user_info {int subctxt_id; int subctxt_cnt; } ;
struct hfi1_ctxtdata {int event_flags; int subctxt_id; int subctxt_cnt; } ;


 int HFI1_CTXT_BASE_UNINIT ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void init_subctxts(struct hfi1_ctxtdata *uctxt,
     const struct hfi1_user_info *uinfo)
{
 uctxt->subctxt_cnt = uinfo->subctxt_cnt;
 uctxt->subctxt_id = uinfo->subctxt_id;
 set_bit(HFI1_CTXT_BASE_UNINIT, &uctxt->event_flags);
}

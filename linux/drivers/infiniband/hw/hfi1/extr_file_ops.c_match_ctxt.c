
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hfi1_user_info {scalar_t__ subctxt_id; scalar_t__ subctxt_cnt; scalar_t__ userversion; int uuid; } ;
struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; scalar_t__ subctxt; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int uctxt_lock; } ;
struct hfi1_ctxtdata {scalar_t__ jkey; scalar_t__ subctxt_id; scalar_t__ subctxt_cnt; scalar_t__ userversion; int in_use_ctxts; int uuid; TYPE_1__* sc; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int EBUSY ;
 int EINVAL ;
 int HFI1_MAX_SHARED_CTXTS ;
 scalar_t__ SC_KERNEL ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ bitmap_empty (int ,int ) ;
 int current_uid () ;
 scalar_t__ find_first_zero_bit (int ,int ) ;
 scalar_t__ generate_jkey (int ) ;
 int hfi1_rcd_get (struct hfi1_ctxtdata*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int match_ctxt(struct hfi1_filedata *fd,
        const struct hfi1_user_info *uinfo,
        struct hfi1_ctxtdata *uctxt)
{
 struct hfi1_devdata *dd = fd->dd;
 unsigned long flags;
 u16 subctxt;


 if (uctxt->sc && (uctxt->sc->type == SC_KERNEL))
  return 0;


 if (memcmp(uctxt->uuid, uinfo->uuid, sizeof(uctxt->uuid)) ||
     uctxt->jkey != generate_jkey(current_uid()) ||
     uctxt->subctxt_id != uinfo->subctxt_id ||
     uctxt->subctxt_cnt != uinfo->subctxt_cnt)
  return 0;


 if (uctxt->userversion != uinfo->userversion)
  return -EINVAL;


 spin_lock_irqsave(&dd->uctxt_lock, flags);
 if (bitmap_empty(uctxt->in_use_ctxts, HFI1_MAX_SHARED_CTXTS)) {

  spin_unlock_irqrestore(&dd->uctxt_lock, flags);
  return 0;
 }

 subctxt = find_first_zero_bit(uctxt->in_use_ctxts,
          HFI1_MAX_SHARED_CTXTS);
 if (subctxt >= uctxt->subctxt_cnt) {
  spin_unlock_irqrestore(&dd->uctxt_lock, flags);
  return -EBUSY;
 }

 fd->subctxt = subctxt;
 __set_bit(fd->subctxt, uctxt->in_use_ctxts);
 spin_unlock_irqrestore(&dd->uctxt_lock, flags);

 fd->uctxt = uctxt;
 hfi1_rcd_get(uctxt);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_context {int flags; } ;
struct hfi1_pportdata {int freeze_work; int hfi1_wq; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int num_send_contexts; TYPE_1__* send_contexts; int flags; } ;
struct TYPE_2__ {struct send_context* sc; } ;


 int CCE_CTRL ;
 int CCE_CTRL_SPC_FREEZE_SMASK ;
 int FREEZE_ABORT ;
 int FREEZE_LINK_DOWN ;
 int FREEZE_SELF ;
 int HFI1_FROZEN ;
 int SCF_ENABLED ;
 int SCF_FROZEN ;
 int SCF_HALTED ;
 int SCF_LINK_DOWN ;
 int _HFI1_EVENT_FROZEN_BIT ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int hfi1_set_uevent_bits (struct hfi1_pportdata*,int ) ;
 int queue_work (int ,int *) ;
 int sc_stop (struct send_context*,int) ;
 int sdma_freeze_notify (struct hfi1_devdata*,int) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

void start_freeze_handling(struct hfi1_pportdata *ppd, int flags)
{
 struct hfi1_devdata *dd = ppd->dd;
 struct send_context *sc;
 int i;
 int sc_flags;

 if (flags & FREEZE_SELF)
  write_csr(dd, CCE_CTRL, CCE_CTRL_SPC_FREEZE_SMASK);


 dd->flags |= HFI1_FROZEN;


 sdma_freeze_notify(dd, !!(flags & FREEZE_LINK_DOWN));

 sc_flags = SCF_FROZEN | SCF_HALTED | (flags & FREEZE_LINK_DOWN ?
           SCF_LINK_DOWN : 0);

 for (i = 0; i < dd->num_send_contexts; i++) {
  sc = dd->send_contexts[i].sc;
  if (sc && (sc->flags & SCF_ENABLED))
   sc_stop(sc, sc_flags);
 }


 hfi1_set_uevent_bits(ppd, _HFI1_EVENT_FROZEN_BIT);

 if (flags & FREEZE_ABORT) {
  dd_dev_err(dd,
      "Aborted freeze recovery. Please REBOOT system\n");
  return;
 }

 queue_work(ppd->hfi1_wq, &ppd->freeze_work);
}

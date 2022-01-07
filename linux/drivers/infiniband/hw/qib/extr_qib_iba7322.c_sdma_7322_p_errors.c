
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {size_t current_state; } ;
struct qib_pportdata {int sdma_lock; TYPE_2__ sdma_state; TYPE_1__* cpspec; int port; struct qib_devdata* dd; } ;
struct qib_devdata {int unit; } ;
struct TYPE_3__ {int sdmamsgbuf; } ;


 int QIB_E_P_SDMAERRS ;
 int QIB_E_P_SDMAHALT ;
 int QIB_E_P_SDMAUNEXPDATA ;
 int __qib_sdma_process_event (struct qib_pportdata*,int ) ;
 int dump_sdma_7322_state (struct qib_pportdata*) ;
 int err_decode (int ,int,int,int ) ;
 int qib_7322p_error_msgs ;
 int qib_dev_err (struct qib_devdata*,char*,int ,int ) ;
 int qib_dev_porterr (struct qib_devdata*,int ,char*,int ,int,int ) ;
 int qib_sdma_event_e20_hw_started ;
 int qib_sdma_event_e50_hw_cleaned ;
 int qib_sdma_event_e60_hw_halted ;
 int qib_sdma_event_e7322_err_halted ;
 int * qib_sdma_state_names ;







 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdma_7322_p_errors(struct qib_pportdata *ppd, u64 errs)
{
 unsigned long flags;
 struct qib_devdata *dd = ppd->dd;

 errs &= QIB_E_P_SDMAERRS;
 err_decode(ppd->cpspec->sdmamsgbuf, sizeof(ppd->cpspec->sdmamsgbuf),
     errs, qib_7322p_error_msgs);

 if (errs & QIB_E_P_SDMAUNEXPDATA)
  qib_dev_err(dd, "IB%u:%u SDmaUnexpData\n", dd->unit,
       ppd->port);

 spin_lock_irqsave(&ppd->sdma_lock, flags);

 if (errs != QIB_E_P_SDMAHALT) {

  qib_dev_porterr(dd, ppd->port,
   "SDMA %s 0x%016llx %s\n",
   qib_sdma_state_names[ppd->sdma_state.current_state],
   errs, ppd->cpspec->sdmamsgbuf);
  dump_sdma_7322_state(ppd);
 }

 switch (ppd->sdma_state.current_state) {
 case 134:
  break;

 case 133:
  if (errs & QIB_E_P_SDMAHALT)
   __qib_sdma_process_event(ppd,
    qib_sdma_event_e20_hw_started);
  break;

 case 132:
  break;

 case 131:
  break;

 case 130:
  if (errs & QIB_E_P_SDMAHALT)
   __qib_sdma_process_event(ppd,
    qib_sdma_event_e50_hw_cleaned);
  break;

 case 129:
  if (errs & QIB_E_P_SDMAHALT)
   __qib_sdma_process_event(ppd,
    qib_sdma_event_e60_hw_halted);
  break;

 case 128:
  __qib_sdma_process_event(ppd, qib_sdma_event_e7322_err_halted);
  __qib_sdma_process_event(ppd, qib_sdma_event_e60_hw_halted);
  break;
 }

 spin_unlock_irqrestore(&ppd->sdma_lock, flags);
}

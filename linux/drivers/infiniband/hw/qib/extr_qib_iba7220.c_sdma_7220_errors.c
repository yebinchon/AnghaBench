
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int current_state; } ;
struct qib_pportdata {int sdma_lock; TYPE_2__ sdma_state; int port; struct qib_devdata* dd; } ;
struct qib_devdata {int unit; TYPE_1__* cspec; } ;
struct TYPE_3__ {char* sdmamsgbuf; } ;


 int DISABLES_SDMA ;
 int ERR_MASK (int ) ;
 int QLOGIC_IB_E_SDMAERRS ;
 int SDmaDisabledErr ;
 int SDmaUnexpDataErr ;
 int SendBufMisuseErr ;
 int __qib_sdma_process_event (struct qib_pportdata*,int ) ;
 scalar_t__ kr_sendbuffererror ;
 int qib_decode_7220_sdma_errs (struct qib_pportdata*,int,char*,int) ;
 int qib_dev_err (struct qib_devdata*,char*,int ,int ,...) ;
 unsigned long qib_read_kreg64 (struct qib_devdata*,scalar_t__) ;
 int qib_sdma_event_e50_hw_cleaned ;
 int qib_sdma_event_e7220_err_halted ;







 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdma_7220_errors(struct qib_pportdata *ppd, u64 errs)
{
 unsigned long flags;
 struct qib_devdata *dd = ppd->dd;
 char *msg;

 errs &= QLOGIC_IB_E_SDMAERRS;

 msg = dd->cspec->sdmamsgbuf;
 qib_decode_7220_sdma_errs(ppd, errs, msg,
  sizeof(dd->cspec->sdmamsgbuf));
 spin_lock_irqsave(&ppd->sdma_lock, flags);

 if (errs & ERR_MASK(SendBufMisuseErr)) {
  unsigned long sbuf[3];

  sbuf[0] = qib_read_kreg64(dd, kr_sendbuffererror);
  sbuf[1] = qib_read_kreg64(dd, kr_sendbuffererror + 1);
  sbuf[2] = qib_read_kreg64(dd, kr_sendbuffererror + 2);

  qib_dev_err(ppd->dd,
       "IB%u:%u SendBufMisuse: %04lx %016lx %016lx\n",
       ppd->dd->unit, ppd->port, sbuf[2], sbuf[1],
       sbuf[0]);
 }

 if (errs & ERR_MASK(SDmaUnexpDataErr))
  qib_dev_err(dd, "IB%u:%u SDmaUnexpData\n", ppd->dd->unit,
       ppd->port);

 switch (ppd->sdma_state.current_state) {
 case 134:

  break;

 case 133:

  break;

 case 132:

  break;

 case 131:

  break;

 case 130:
  if (errs & ERR_MASK(SDmaDisabledErr))
   __qib_sdma_process_event(ppd,
    qib_sdma_event_e50_hw_cleaned);
  break;

 case 129:

  break;

 case 128:
  if (errs & DISABLES_SDMA)
   __qib_sdma_process_event(ppd,
    qib_sdma_event_e7220_err_halted);
  break;
 }

 spin_unlock_irqrestore(&ppd->sdma_lock, flags);
}

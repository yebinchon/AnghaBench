
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_devdata {int num_pports; int first_user_ctxt; int n_krcv_queues; int ctxtcnt; unsigned long long rcvctrl; int rcvhdrcnt; TYPE_1__* cspec; } ;
struct TYPE_2__ {int numctxts; void* rcvegrcnt; int rcvmod_lock; } ;


 int ContextCfg ;
 int NUM_IB_PORTS ;
 int RcvCtrl ;
 unsigned long long SYM_LSB (int ,int ) ;
 int XrcTypeCode ;
 int kr_contextcnt ;
 int kr_rcvctrl ;
 int kr_rcvegrcnt ;
 int max (void*,unsigned int) ;
 int num_online_cpus () ;
 int qib_cfgctxts ;
 int qib_n_krcv_queues ;
 unsigned int qib_rcvhdrcnt ;
 void* qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qib_7322_config_ctxts(struct qib_devdata *dd)
{
 unsigned long flags;
 u32 nchipctxts;

 nchipctxts = qib_read_kreg32(dd, kr_contextcnt);
 dd->cspec->numctxts = nchipctxts;
 if (qib_n_krcv_queues > 1 && dd->num_pports) {
  dd->first_user_ctxt = NUM_IB_PORTS +
   (qib_n_krcv_queues - 1) * dd->num_pports;
  if (dd->first_user_ctxt > nchipctxts)
   dd->first_user_ctxt = nchipctxts;
  dd->n_krcv_queues = dd->first_user_ctxt / dd->num_pports;
 } else {
  dd->first_user_ctxt = NUM_IB_PORTS;
  dd->n_krcv_queues = 1;
 }

 if (!qib_cfgctxts) {
  int nctxts = dd->first_user_ctxt + num_online_cpus();

  if (nctxts <= 6)
   dd->ctxtcnt = 6;
  else if (nctxts <= 10)
   dd->ctxtcnt = 10;
  else if (nctxts <= nchipctxts)
   dd->ctxtcnt = nchipctxts;
 } else if (qib_cfgctxts < dd->num_pports)
  dd->ctxtcnt = dd->num_pports;
 else if (qib_cfgctxts <= nchipctxts)
  dd->ctxtcnt = qib_cfgctxts;
 if (!dd->ctxtcnt)
  dd->ctxtcnt = nchipctxts;






 spin_lock_irqsave(&dd->cspec->rcvmod_lock, flags);
 if (dd->ctxtcnt > 10)
  dd->rcvctrl |= 2ULL << SYM_LSB(RcvCtrl, ContextCfg);
 else if (dd->ctxtcnt > 6)
  dd->rcvctrl |= 1ULL << SYM_LSB(RcvCtrl, ContextCfg);



 dd->rcvctrl |= 5ULL << SYM_LSB(RcvCtrl, XrcTypeCode);





 qib_write_kreg(dd, kr_rcvctrl, dd->rcvctrl);
 spin_unlock_irqrestore(&dd->cspec->rcvmod_lock, flags);


 dd->cspec->rcvegrcnt = qib_read_kreg32(dd, kr_rcvegrcnt);
 if (qib_rcvhdrcnt)
  dd->rcvhdrcnt = max(dd->cspec->rcvegrcnt, qib_rcvhdrcnt);
 else
  dd->rcvhdrcnt = 2 * max(dd->cspec->rcvegrcnt,
        dd->num_pports > 1 ? 1024U : 2048U);
}

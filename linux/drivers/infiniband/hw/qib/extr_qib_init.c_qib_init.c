
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qib_pportdata {int lflags; int* statusp; int hol_state; int hol_timer; int link_speed_enabled; int port; int lflags_lock; int init_ibmaxlen; int ibmaxlen; } ;
struct qib_devdata {int num_pports; int (* f_late_initreg ) (struct qib_devdata*) ;unsigned int first_user_ctxt; int rcvhdrentsize; int (* f_bringup_serdes ) (struct qib_pportdata*) ;int flags; int stats_timer; int intrchk_timer; int (* f_set_intr_state ) (struct qib_devdata*,int) ;struct qib_pportdata* pport; int pcidev; scalar_t__ rcvegrbufsize; int piosize2k; int piosize4k; struct qib_ctxtdata** rcd; } ;
struct qib_ctxtdata {int dummy; } ;


 int ACTIVITY_TIMER ;
 int ENETDOWN ;
 int HZ ;
 int QIBL_IB_LINK_DISABLED ;
 int QIBL_LINKACTIVE ;
 int QIBL_LINKARMED ;
 int QIBL_LINKDOWN ;
 int QIBL_LINKINIT ;
 int QIBL_LINKV ;
 int QIB_DEFAULT_MTU ;
 int QIB_HAS_SEND_DMA ;
 int QIB_HOL_UP ;
 int QIB_STATUS_CHIP_PRESENT ;
 int QIB_STATUS_INITTED ;
 int enable_chip (struct qib_devdata*) ;
 int ib_mtu_enum_to_int (scalar_t__) ;
 int init_after_reset (struct qib_devdata*) ;
 int init_piobuf_state (struct qib_devdata*) ;
 scalar_t__ jiffies ;
 int loadtime_init (struct qib_devdata*) ;
 int min (int ,scalar_t__) ;
 int mod_timer (int *,scalar_t__) ;
 int qib_create_rcvhdrq (struct qib_devdata*,struct qib_ctxtdata*) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_devinfo (int ,char*,int ) ;
 int qib_hol_event ;
 scalar_t__ qib_ibmtu ;
 scalar_t__ qib_mini_init ;
 int qib_set_mtu (struct qib_pportdata*,int) ;
 int qib_setup_eagerbufs (struct qib_ctxtdata*) ;
 int qib_setup_sdma (struct qib_pportdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct qib_devdata*) ;
 int stub2 (struct qib_pportdata*) ;
 int stub3 (struct qib_devdata*,int) ;
 int timer_setup (int *,int ,int ) ;

int qib_init(struct qib_devdata *dd, int reinit)
{
 int ret = 0, pidx, lastfail = 0;
 u32 portok = 0;
 unsigned i;
 struct qib_ctxtdata *rcd;
 struct qib_pportdata *ppd;
 unsigned long flags;


 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  spin_lock_irqsave(&ppd->lflags_lock, flags);
  ppd->lflags &= ~(QIBL_LINKACTIVE | QIBL_LINKARMED |
     QIBL_LINKDOWN | QIBL_LINKINIT |
     QIBL_LINKV);
  spin_unlock_irqrestore(&ppd->lflags_lock, flags);
 }

 if (reinit)
  ret = init_after_reset(dd);
 else
  ret = loadtime_init(dd);
 if (ret)
  goto done;


 if (qib_mini_init)
  return 0;

 ret = dd->f_late_initreg(dd);
 if (ret)
  goto done;


 for (i = 0; dd->rcd && i < dd->first_user_ctxt; ++i) {






  rcd = dd->rcd[i];
  if (!rcd)
   continue;

  lastfail = qib_create_rcvhdrq(dd, rcd);
  if (!lastfail)
   lastfail = qib_setup_eagerbufs(rcd);
  if (lastfail)
   qib_dev_err(dd,
    "failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
 }

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  int mtu;

  if (lastfail)
   ret = lastfail;
  ppd = dd->pport + pidx;
  mtu = ib_mtu_enum_to_int(qib_ibmtu);
  if (mtu == -1) {
   mtu = QIB_DEFAULT_MTU;
   qib_ibmtu = 0;
  }

  ppd->init_ibmaxlen = min(mtu > 2048 ?
      dd->piosize4k : dd->piosize2k,
      dd->rcvegrbufsize +
      (dd->rcvhdrentsize << 2));




  ppd->ibmaxlen = ppd->init_ibmaxlen;
  qib_set_mtu(ppd, mtu);

  spin_lock_irqsave(&ppd->lflags_lock, flags);
  ppd->lflags |= QIBL_IB_LINK_DISABLED;
  spin_unlock_irqrestore(&ppd->lflags_lock, flags);

  lastfail = dd->f_bringup_serdes(ppd);
  if (lastfail) {
   qib_devinfo(dd->pcidev,
     "Failed to bringup IB port %u\n", ppd->port);
   lastfail = -ENETDOWN;
   continue;
  }

  portok++;
 }

 if (!portok) {

  if (!ret && lastfail)
   ret = lastfail;
  else if (!ret)
   ret = -ENETDOWN;

 }

 enable_chip(dd);

 init_piobuf_state(dd);

done:
 if (!ret) {

  for (pidx = 0; pidx < dd->num_pports; ++pidx) {
   ppd = dd->pport + pidx;




   *ppd->statusp |= QIB_STATUS_CHIP_PRESENT |
    QIB_STATUS_INITTED;
   if (!ppd->link_speed_enabled)
    continue;
   if (dd->flags & QIB_HAS_SEND_DMA)
    ret = qib_setup_sdma(ppd);
   timer_setup(&ppd->hol_timer, qib_hol_event, 0);
   ppd->hol_state = QIB_HOL_UP;
  }


  dd->f_set_intr_state(dd, 1);





  mod_timer(&dd->intrchk_timer, jiffies + HZ/2);

  mod_timer(&dd->stats_timer, jiffies + HZ * ACTIVITY_TIMER);
 }


 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_filedata {int rec_cpu_num; int subctxt; scalar_t__ pq; struct qib_ctxtdata* rcd; } ;
struct qib_devdata {int freectxts; scalar_t__ pageshadow; int (* f_clear_tids ) (struct qib_devdata*,struct qib_ctxtdata*) ;int (* f_rcvctrl ) (int ,int,unsigned int) ;scalar_t__ kregbase; int uctxt_lock; int ** rcd; } ;
struct qib_ctxtdata {int active_slaves; unsigned int ctxt; int piocnt; int pio_base; int ppd; scalar_t__ flag; scalar_t__ pionowait; scalar_t__ rcvnowait; scalar_t__ piowait_to; scalar_t__ rcvwait_to; scalar_t__ pid; scalar_t__* subpid; scalar_t__ cnt; struct qib_devdata* dd; } ;
struct inode {int dummy; } ;
struct file {struct qib_filedata* private_data; } ;
struct TYPE_2__ {int sps_ctxts; } ;


 int QIB_RCVCTRL_CTXT_DIS ;
 int QIB_RCVCTRL_INTRAVAIL_DIS ;
 int TXCHK_CHG_TYPE_KERN ;
 int __clear_bit (int,int ) ;
 int kfree (struct qib_filedata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qib_chg_pioavailkernel (struct qib_devdata*,int ,int ,int ,int *) ;
 int qib_clean_part_key (struct qib_ctxtdata*,struct qib_devdata*) ;
 int qib_cpulist ;
 int qib_disarm_piobufs (struct qib_devdata*,int ,int ) ;
 int qib_flush_wc () ;
 int qib_free_ctxtdata (struct qib_devdata*,struct qib_ctxtdata*) ;
 int qib_mutex ;
 TYPE_1__ qib_stats ;
 int qib_user_sdma_queue_destroy (scalar_t__) ;
 int qib_user_sdma_queue_drain (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int,unsigned int) ;
 int stub2 (struct qib_devdata*,struct qib_ctxtdata*) ;
 int unlock_expected_tids (struct qib_ctxtdata*) ;

__attribute__((used)) static int qib_close(struct inode *in, struct file *fp)
{
 struct qib_filedata *fd;
 struct qib_ctxtdata *rcd;
 struct qib_devdata *dd;
 unsigned long flags;
 unsigned ctxt;

 mutex_lock(&qib_mutex);

 fd = fp->private_data;
 fp->private_data = ((void*)0);
 rcd = fd->rcd;
 if (!rcd) {
  mutex_unlock(&qib_mutex);
  goto bail;
 }

 dd = rcd->dd;


 qib_flush_wc();


 if (fd->pq) {
  qib_user_sdma_queue_drain(rcd->ppd, fd->pq);
  qib_user_sdma_queue_destroy(fd->pq);
 }

 if (fd->rec_cpu_num != -1)
  __clear_bit(fd->rec_cpu_num, qib_cpulist);

 if (--rcd->cnt) {





  rcd->active_slaves &= ~(1 << fd->subctxt);
  rcd->subpid[fd->subctxt] = 0;
  mutex_unlock(&qib_mutex);
  goto bail;
 }


 spin_lock_irqsave(&dd->uctxt_lock, flags);
 ctxt = rcd->ctxt;
 dd->rcd[ctxt] = ((void*)0);
 rcd->pid = 0;
 spin_unlock_irqrestore(&dd->uctxt_lock, flags);

 if (rcd->rcvwait_to || rcd->piowait_to ||
     rcd->rcvnowait || rcd->pionowait) {
  rcd->rcvwait_to = 0;
  rcd->piowait_to = 0;
  rcd->rcvnowait = 0;
  rcd->pionowait = 0;
 }
 if (rcd->flag)
  rcd->flag = 0;

 if (dd->kregbase) {

  dd->f_rcvctrl(rcd->ppd, QIB_RCVCTRL_CTXT_DIS |
      QIB_RCVCTRL_INTRAVAIL_DIS, ctxt);


  qib_clean_part_key(rcd, dd);
  qib_disarm_piobufs(dd, rcd->pio_base, rcd->piocnt);
  qib_chg_pioavailkernel(dd, rcd->pio_base,
           rcd->piocnt, TXCHK_CHG_TYPE_KERN, ((void*)0));

  dd->f_clear_tids(dd, rcd);

  if (dd->pageshadow)
   unlock_expected_tids(rcd);
  qib_stats.sps_ctxts--;
  dd->freectxts++;
 }

 mutex_unlock(&qib_mutex);
 qib_free_ctxtdata(dd, rcd);

bail:
 kfree(fd);
 return 0;
}

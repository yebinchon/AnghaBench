
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int uctxt_lock; } ;
struct hfi1_ctxtdata {int event_flags; int wait; struct hfi1_devdata* dd; } ;
struct file {struct hfi1_filedata* private_data; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int HFI1_CTXT_WAITING_RCV ;
 int HFI1_RCVCTRL_INTRAVAIL_ENB ;
 scalar_t__ hdrqempty (struct hfi1_ctxtdata*) ;
 int hfi1_rcvctrl (struct hfi1_devdata*,int ,struct hfi1_ctxtdata*) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t poll_next(struct file *fp,
         struct poll_table_struct *pt)
{
 struct hfi1_filedata *fd = fp->private_data;
 struct hfi1_ctxtdata *uctxt = fd->uctxt;
 struct hfi1_devdata *dd = uctxt->dd;
 __poll_t pollflag;

 poll_wait(fp, &uctxt->wait, pt);

 spin_lock_irq(&dd->uctxt_lock);
 if (hdrqempty(uctxt)) {
  set_bit(HFI1_CTXT_WAITING_RCV, &uctxt->event_flags);
  hfi1_rcvctrl(dd, HFI1_RCVCTRL_INTRAVAIL_ENB, uctxt);
  pollflag = 0;
 } else {
  pollflag = EPOLLIN | EPOLLRDNORM;
 }
 spin_unlock_irq(&dd->uctxt_lock);

 return pollflag;
}

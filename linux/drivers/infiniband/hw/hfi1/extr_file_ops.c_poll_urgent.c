
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int uctxt_lock; } ;
struct hfi1_ctxtdata {scalar_t__ urgent; scalar_t__ urgent_poll; int event_flags; int wait; struct hfi1_devdata* dd; } ;
struct file {struct hfi1_filedata* private_data; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int HFI1_CTXT_WAITING_URG ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t poll_urgent(struct file *fp,
    struct poll_table_struct *pt)
{
 struct hfi1_filedata *fd = fp->private_data;
 struct hfi1_ctxtdata *uctxt = fd->uctxt;
 struct hfi1_devdata *dd = uctxt->dd;
 __poll_t pollflag;

 poll_wait(fp, &uctxt->wait, pt);

 spin_lock_irq(&dd->uctxt_lock);
 if (uctxt->urgent != uctxt->urgent_poll) {
  pollflag = EPOLLIN | EPOLLRDNORM;
  uctxt->urgent_poll = uctxt->urgent;
 } else {
  pollflag = 0;
  set_bit(HFI1_CTXT_WAITING_URG, &uctxt->event_flags);
 }
 spin_unlock_irq(&dd->uctxt_lock);

 return pollflag;
}

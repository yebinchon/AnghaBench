
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_ctxtdata {scalar_t__ poll_type; } ;
struct file {scalar_t__ private_data; } ;
typedef int __poll_t ;


 int EPOLLERR ;
 scalar_t__ HFI1_POLL_TYPE_ANYRCV ;
 scalar_t__ HFI1_POLL_TYPE_URGENT ;
 int poll_next (struct file*,struct poll_table_struct*) ;
 int poll_urgent (struct file*,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t hfi1_poll(struct file *fp, struct poll_table_struct *pt)
{
 struct hfi1_ctxtdata *uctxt;
 __poll_t pollflag;

 uctxt = ((struct hfi1_filedata *)fp->private_data)->uctxt;
 if (!uctxt)
  pollflag = EPOLLERR;
 else if (uctxt->poll_type == HFI1_POLL_TYPE_URGENT)
  pollflag = poll_urgent(fp, pt);
 else if (uctxt->poll_type == HFI1_POLL_TYPE_ANYRCV)
  pollflag = poll_next(fp, pt);
 else
  pollflag = EPOLLERR;

 return pollflag;
}

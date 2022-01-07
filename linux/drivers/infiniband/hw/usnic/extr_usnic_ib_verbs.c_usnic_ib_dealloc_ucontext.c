
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_ucontext {int link; int qp_grp_list; } ;
struct usnic_ib_dev {int usdev_lock; } ;
struct ib_ucontext {int device; } ;


 int WARN_ON_ONCE (int) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usnic_ib_dev* to_usdev (int ) ;
 struct usnic_ib_ucontext* to_uucontext (struct ib_ucontext*) ;
 int usnic_dbg (char*) ;

void usnic_ib_dealloc_ucontext(struct ib_ucontext *ibcontext)
{
 struct usnic_ib_ucontext *context = to_uucontext(ibcontext);
 struct usnic_ib_dev *us_ibdev = to_usdev(ibcontext->device);
 usnic_dbg("\n");

 mutex_lock(&us_ibdev->usdev_lock);
 WARN_ON_ONCE(!list_empty(&context->qp_grp_list));
 list_del(&context->link);
 mutex_unlock(&us_ibdev->usdev_lock);
}

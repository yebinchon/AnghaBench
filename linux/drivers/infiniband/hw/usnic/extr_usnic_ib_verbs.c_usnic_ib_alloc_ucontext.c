
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_ucontext {int link; int qp_grp_list; } ;
struct usnic_ib_dev {int usdev_lock; int ctx_list; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usnic_ib_ucontext* to_ucontext (struct ib_ucontext*) ;
 struct usnic_ib_dev* to_usdev (struct ib_device*) ;
 int usnic_dbg (char*) ;

int usnic_ib_alloc_ucontext(struct ib_ucontext *uctx, struct ib_udata *udata)
{
 struct ib_device *ibdev = uctx->device;
 struct usnic_ib_ucontext *context = to_ucontext(uctx);
 struct usnic_ib_dev *us_ibdev = to_usdev(ibdev);
 usnic_dbg("\n");

 INIT_LIST_HEAD(&context->qp_grp_list);
 mutex_lock(&us_ibdev->usdev_lock);
 list_add_tail(&context->link, &us_ibdev->ctx_list);
 mutex_unlock(&us_ibdev->usdev_lock);

 return 0;
}

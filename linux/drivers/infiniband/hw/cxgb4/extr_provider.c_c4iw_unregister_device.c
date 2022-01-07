
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_dev {int ibdev; } ;


 int ib_unregister_device (int *) ;
 int pr_debug (char*,struct c4iw_dev*) ;

void c4iw_unregister_device(struct c4iw_dev *dev)
{
 pr_debug("c4iw_dev %p\n", dev);
 ib_unregister_device(&dev->ibdev);
 return;
}

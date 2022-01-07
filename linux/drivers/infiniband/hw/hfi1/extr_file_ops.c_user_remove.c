
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int user_device; int user_cdev; } ;


 int hfi1_cdev_cleanup (int *,int *) ;

__attribute__((used)) static void user_remove(struct hfi1_devdata *dd)
{

 hfi1_cdev_cleanup(&dd->user_cdev, &dd->user_device);
}

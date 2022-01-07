
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int user_device; int user_cdev; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int qib_cdev_cleanup (int *,int *) ;
 int user_count ;
 int wildcard_cdev ;
 int wildcard_device ;

__attribute__((used)) static void qib_user_remove(struct qib_devdata *dd)
{
 if (atomic_dec_return(&user_count) == 0)
  qib_cdev_cleanup(&wildcard_cdev, &wildcard_device);

 qib_cdev_cleanup(&dd->user_cdev, &dd->user_device);
}

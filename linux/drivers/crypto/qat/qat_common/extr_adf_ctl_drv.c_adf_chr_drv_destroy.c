
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; int drv_class; int drv_cdev; } ;


 int MKDEV (int ,int ) ;
 TYPE_1__ adf_ctl_drv ;
 int cdev_del (int *) ;
 int class_destroy (int ) ;
 int device_destroy (int ,int ) ;
 int unregister_chrdev_region (int ,int) ;

__attribute__((used)) static void adf_chr_drv_destroy(void)
{
 device_destroy(adf_ctl_drv.drv_class, MKDEV(adf_ctl_drv.major, 0));
 cdev_del(&adf_ctl_drv.drv_cdev);
 class_destroy(adf_ctl_drv.drv_class);
 unregister_chrdev_region(MKDEV(adf_ctl_drv.major, 0), 1);
}

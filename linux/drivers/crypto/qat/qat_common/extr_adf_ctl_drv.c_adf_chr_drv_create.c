
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {struct device* drv_class; int drv_cdev; int major; } ;


 int DEVICE_NAME ;
 int EFAULT ;
 scalar_t__ IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int ) ;
 int THIS_MODULE ;
 TYPE_1__ adf_ctl_drv ;
 int adf_ctl_ops ;
 scalar_t__ alloc_chrdev_region (int *,int ,int,int ) ;
 scalar_t__ cdev_add (int *,int ,int) ;
 int cdev_del (int *) ;
 int cdev_init (int *,int *) ;
 struct device* class_create (int ,int ) ;
 int class_destroy (struct device*) ;
 struct device* device_create (struct device*,int *,int ,int *,int ) ;
 int pr_err (char*) ;
 int unregister_chrdev_region (int ,int) ;

__attribute__((used)) static int adf_chr_drv_create(void)
{
 dev_t dev_id;
 struct device *drv_device;

 if (alloc_chrdev_region(&dev_id, 0, 1, DEVICE_NAME)) {
  pr_err("QAT: unable to allocate chrdev region\n");
  return -EFAULT;
 }

 adf_ctl_drv.drv_class = class_create(THIS_MODULE, DEVICE_NAME);
 if (IS_ERR(adf_ctl_drv.drv_class)) {
  pr_err("QAT: class_create failed for adf_ctl\n");
  goto err_chrdev_unreg;
 }
 adf_ctl_drv.major = MAJOR(dev_id);
 cdev_init(&adf_ctl_drv.drv_cdev, &adf_ctl_ops);
 if (cdev_add(&adf_ctl_drv.drv_cdev, dev_id, 1)) {
  pr_err("QAT: cdev add failed\n");
  goto err_class_destr;
 }

 drv_device = device_create(adf_ctl_drv.drv_class, ((void*)0),
       MKDEV(adf_ctl_drv.major, 0),
       ((void*)0), DEVICE_NAME);
 if (IS_ERR(drv_device)) {
  pr_err("QAT: failed to create device\n");
  goto err_cdev_del;
 }
 return 0;
err_cdev_del:
 cdev_del(&adf_ctl_drv.drv_cdev);
err_class_destr:
 class_destroy(adf_ctl_drv.drv_class);
err_chrdev_unreg:
 unregister_chrdev_region(dev_id, 1);
 return -EFAULT;
}

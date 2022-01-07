
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int MKDEV (int,int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int class_create (int ,int ) ;
 int class_destroy (int ) ;
 int device_create (int ,int *,int ,int *,int ) ;
 int kfd_char_dev_major ;
 int kfd_class ;
 int kfd_dev_name ;
 int kfd_device ;
 int kfd_fops ;
 int register_chrdev (int ,int ,int *) ;
 int unregister_chrdev (int,int ) ;

int kfd_chardev_init(void)
{
 int err = 0;

 kfd_char_dev_major = register_chrdev(0, kfd_dev_name, &kfd_fops);
 err = kfd_char_dev_major;
 if (err < 0)
  goto err_register_chrdev;

 kfd_class = class_create(THIS_MODULE, kfd_dev_name);
 err = PTR_ERR(kfd_class);
 if (IS_ERR(kfd_class))
  goto err_class_create;

 kfd_device = device_create(kfd_class, ((void*)0),
     MKDEV(kfd_char_dev_major, 0),
     ((void*)0), kfd_dev_name);
 err = PTR_ERR(kfd_device);
 if (IS_ERR(kfd_device))
  goto err_device_create;

 return 0;

err_device_create:
 class_destroy(kfd_class);
err_class_create:
 unregister_chrdev(kfd_char_dev_major, kfd_dev_name);
err_register_chrdev:
 return err;
}

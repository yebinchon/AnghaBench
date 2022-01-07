
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (int ,int ) ;
 int class_destroy (int ) ;
 int device_destroy (int ,int ) ;
 int kfd_char_dev_major ;
 int kfd_class ;
 int kfd_dev_name ;
 int unregister_chrdev (int ,int ) ;

void kfd_chardev_exit(void)
{
 device_destroy(kfd_class, MKDEV(kfd_char_dev_major, 0));
 class_destroy(kfd_class);
 unregister_chrdev(kfd_char_dev_major, kfd_dev_name);
}

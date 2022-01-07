
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct uinput_device* private_data; } ;


 int kfree (struct uinput_device*) ;
 int uinput_destroy_device (struct uinput_device*) ;

__attribute__((used)) static int uinput_release(struct inode *inode, struct file *file)
{
 struct uinput_device *udev = file->private_data;

 uinput_destroy_device(udev);
 kfree(udev);

 return 0;
}

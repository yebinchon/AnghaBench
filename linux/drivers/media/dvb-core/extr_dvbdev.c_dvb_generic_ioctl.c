
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dvb_device* private_data; } ;
struct dvb_device {int kernel_ioctl; } ;


 long EINVAL ;
 long ENODEV ;
 long dvb_usercopy (struct file*,unsigned int,unsigned long,int ) ;

long dvb_generic_ioctl(struct file *file,
         unsigned int cmd, unsigned long arg)
{
 struct dvb_device *dvbdev = file->private_data;

 if (!dvbdev)
  return -ENODEV;

 if (!dvbdev->kernel_ioctl)
  return -EINVAL;

 return dvb_usercopy(file, cmd, arg, dvbdev->kernel_ioctl);
}

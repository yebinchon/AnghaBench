
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dvb_device* private_data; } ;
struct dvb_device {int dummy; } ;


 long ENODEV ;
 int dvb_frontend_do_ioctl ;
 long dvb_usercopy (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long dvb_frontend_ioctl(struct file *file, unsigned int cmd,
          unsigned long arg)
{
 struct dvb_device *dvbdev = file->private_data;

 if (!dvbdev)
  return -ENODEV;

 return dvb_usercopy(file, cmd, arg, dvb_frontend_do_ioctl);
}

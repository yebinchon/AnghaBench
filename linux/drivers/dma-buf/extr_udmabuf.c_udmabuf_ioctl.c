
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOTTY ;


 long udmabuf_ioctl_create (struct file*,unsigned long) ;
 long udmabuf_ioctl_create_list (struct file*,unsigned long) ;

__attribute__((used)) static long udmabuf_ioctl(struct file *filp, unsigned int ioctl,
     unsigned long arg)
{
 long ret;

 switch (ioctl) {
 case 129:
  ret = udmabuf_ioctl_create(filp, arg);
  break;
 case 128:
  ret = udmabuf_ioctl_create_list(filp, arg);
  break;
 default:
  ret = -ENOTTY;
  break;
 }
 return ret;
}

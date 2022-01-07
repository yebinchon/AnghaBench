
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int drm_ioctl ;
 long vmw_generic_ioctl (struct file*,unsigned int,unsigned long,int *) ;

__attribute__((used)) static long vmw_unlocked_ioctl(struct file *filp, unsigned int cmd,
          unsigned long arg)
{
 return vmw_generic_ioctl(filp, cmd, arg, &drm_ioctl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int (* drm_ioctl_compat_t ) (struct file*,unsigned int,unsigned long) ;


 unsigned int ARRAY_SIZE (int ) ;
 unsigned int DRM_COMMAND_BASE ;
 unsigned int DRM_IOCTL_NR (unsigned int) ;
 long drm_compat_ioctl (struct file*,unsigned int,unsigned long) ;
 int mga_compat_ioctls ;
 int nouveau_compat_ioctls (struct file*,unsigned int,unsigned long) ;
 int nouveau_drm_ioctl (struct file*,unsigned int,unsigned long) ;
 int stub1 (struct file*,unsigned int,unsigned long) ;

long nouveau_compat_ioctl(struct file *filp, unsigned int cmd,
    unsigned long arg)
{
 unsigned int nr = DRM_IOCTL_NR(cmd);
 drm_ioctl_compat_t *fn = ((void*)0);
 int ret;

 if (nr < DRM_COMMAND_BASE)
  return drm_compat_ioctl(filp, cmd, arg);





 if (fn != ((void*)0))
  ret = (*fn)(filp, cmd, arg);
 else
  ret = nouveau_drm_ioctl(filp, cmd, arg);

 return ret;
}

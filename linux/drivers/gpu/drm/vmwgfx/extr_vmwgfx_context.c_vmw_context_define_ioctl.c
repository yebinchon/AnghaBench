
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int vmw_context_define (struct drm_device*,void*,struct drm_file*,int) ;

int vmw_context_define_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 return vmw_context_define(dev, data, file_priv, 0);
}

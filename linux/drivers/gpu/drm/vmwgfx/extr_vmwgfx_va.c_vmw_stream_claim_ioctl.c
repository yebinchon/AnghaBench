
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int va_stream_func ;
 int vmw_simple_resource_create_ioctl (struct drm_device*,void*,struct drm_file*,int *) ;

int vmw_stream_claim_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 return vmw_simple_resource_create_ioctl(dev, data, file_priv,
      &va_stream_func);
}

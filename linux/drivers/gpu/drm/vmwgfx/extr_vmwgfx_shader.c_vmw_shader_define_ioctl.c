
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vmw_shader_create_arg {int shader_handle; int offset; int size; int buffer_handle; int shader_type; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int vmw_shader_define (struct drm_device*,struct drm_file*,int ,int ,int ,int ,int ,int ,int *) ;

int vmw_shader_define_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct drm_vmw_shader_create_arg *arg =
  (struct drm_vmw_shader_create_arg *)data;

 return vmw_shader_define(dev, file_priv, arg->shader_type,
     arg->buffer_handle,
     arg->size, arg->offset,
     0, 0,
     &arg->shader_handle);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_device {int has_virgl_3d; } ;
struct drm_virtgpu_getparam {int param; int value; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;


 int EFAULT ;
 int EINVAL ;


 scalar_t__ copy_to_user (int ,int*,int) ;
 int u64_to_user_ptr (int ) ;

__attribute__((used)) static int virtio_gpu_getparam_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct virtio_gpu_device *vgdev = dev->dev_private;
 struct drm_virtgpu_getparam *param = data;
 int value;

 switch (param->param) {
 case 129:
  value = vgdev->has_virgl_3d == 1 ? 1 : 0;
  break;
 case 128:
  value = 1;
  break;
 default:
  return -EINVAL;
 }
 if (copy_to_user(u64_to_user_ptr(param->value), &value, sizeof(int)))
  return -EFAULT;

 return 0;
}

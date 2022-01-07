
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* pdev; TYPE_2__* dev_private; } ;
struct TYPE_5__ {int chipset; } ;
typedef TYPE_2__ drm_mga_private_t ;
struct TYPE_6__ {int param; int value; } ;
typedef TYPE_3__ drm_mga_getparam_t ;
struct TYPE_4__ {int irq; } ;


 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;


 scalar_t__ copy_to_user (int ,int*,int) ;
 int current ;
 int task_pid_nr (int ) ;

int mga_getparam(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 drm_mga_getparam_t *param = data;
 int value;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 DRM_DEBUG("pid=%d\n", task_pid_nr(current));

 switch (param->param) {
 case 128:
  value = dev->pdev->irq;
  break;
 case 129:
  value = dev_priv->chipset;
  break;
 default:
  return -EINVAL;
 }

 if (copy_to_user(param->value, &value, sizeof(int))) {
  DRM_ERROR("copy_to_user\n");
  return -EFAULT;
 }

 return 0;
}

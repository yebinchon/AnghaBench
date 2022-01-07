
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* pdev; int * dev_private; } ;
typedef int drm_r128_private_t ;
struct TYPE_4__ {int param; int value; } ;
typedef TYPE_2__ drm_r128_getparam_t ;
struct TYPE_3__ {int irq; } ;


 int DEV_INIT_TEST_WITH_RETURN (int *) ;
 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;

 scalar_t__ copy_to_user (int ,int*,int) ;
 int current ;
 int task_pid_nr (int ) ;

int r128_getparam(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 drm_r128_getparam_t *param = data;
 int value;

 DEV_INIT_TEST_WITH_RETURN(dev_priv);

 DRM_DEBUG("pid=%d\n", task_pid_nr(current));

 switch (param->param) {
 case 128:
  value = dev->pdev->irq;
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

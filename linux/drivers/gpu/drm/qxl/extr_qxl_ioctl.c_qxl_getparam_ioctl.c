
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_device {TYPE_1__* rom; } ;
struct drm_qxl_getparam {int param; int value; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct TYPE_2__ {int n_surfaces; } ;


 int EINVAL ;
 int QXL_MAX_RES ;



__attribute__((used)) static int qxl_getparam_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct qxl_device *qdev = dev->dev_private;
 struct drm_qxl_getparam *param = data;

 switch (param->param) {
 case 128:
  param->value = qdev->rom->n_surfaces;
  break;
 case 129:
  param->value = QXL_MAX_RES;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lima_device {int pp_version; int gp_version; TYPE_1__* pipe; int id; } ;
struct drm_lima_get_param {int param; int value; scalar_t__ pad; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int num_processor; } ;



 int DRM_LIMA_PARAM_GPU_ID_MALI400 ;
 int DRM_LIMA_PARAM_GPU_ID_MALI450 ;
 int DRM_LIMA_PARAM_GPU_ID_UNKNOWN ;



 int EINVAL ;


 size_t lima_pipe_pp ;
 struct lima_device* to_lima_dev (struct drm_device*) ;

__attribute__((used)) static int lima_ioctl_get_param(struct drm_device *dev, void *data, struct drm_file *file)
{
 struct drm_lima_get_param *args = data;
 struct lima_device *ldev = to_lima_dev(dev);

 if (args->pad)
  return -EINVAL;

 switch (args->param) {
 case 133:
  switch (ldev->id) {
  case 129:
   args->value = DRM_LIMA_PARAM_GPU_ID_MALI400;
   break;
  case 128:
   args->value = DRM_LIMA_PARAM_GPU_ID_MALI450;
   break;
  default:
   args->value = DRM_LIMA_PARAM_GPU_ID_UNKNOWN;
   break;
  }
  break;

 case 131:
  args->value = ldev->pipe[lima_pipe_pp].num_processor;
  break;

 case 132:
  args->value = ldev->gp_version;
  break;

 case 130:
  args->value = ldev->pp_version;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}

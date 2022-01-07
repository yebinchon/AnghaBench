
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct v3d_dev {int dev; } ;
struct drm_v3d_get_param {scalar_t__ pad; size_t param; int value; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 size_t ARRAY_SIZE (size_t const*) ;
 int DRM_DEBUG (char*,int) ;
 int EINVAL ;
 int V3D_CORE_READ (int ,size_t) ;







 int V3D_READ (size_t) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct v3d_dev* to_v3d_dev (struct drm_device*) ;
 int v3d_has_csd (struct v3d_dev*) ;

__attribute__((used)) static int v3d_get_param_ioctl(struct drm_device *dev, void *data,
          struct drm_file *file_priv)
{
 struct v3d_dev *v3d = to_v3d_dev(dev);
 struct drm_v3d_get_param *args = data;
 int ret;
 static const u32 reg_map[] = {
  [135] = 128,
  [138] = 131,
  [137] = 130,
  [136] = 129,
  [141] = 134,
  [140] = 133,
  [139] = 132,
 };

 if (args->pad != 0)
  return -EINVAL;





 if (args->param < ARRAY_SIZE(reg_map) &&
     (reg_map[args->param] ||
      args->param == 141)) {
  u32 offset = reg_map[args->param];

  if (args->value != 0)
   return -EINVAL;

  ret = pm_runtime_get_sync(v3d->dev);
  if (ret < 0)
   return ret;
  if (args->param >= 141 &&
      args->param <= 139) {
   args->value = V3D_CORE_READ(0, offset);
  } else {
   args->value = V3D_READ(offset);
  }
  pm_runtime_mark_last_busy(v3d->dev);
  pm_runtime_put_autosuspend(v3d->dev);
  return 0;
 }


 switch (args->param) {
 case 142:
  args->value = 1;
  return 0;
 case 143:
  args->value = v3d_has_csd(v3d);
  return 0;
 default:
  DRM_DEBUG("Unknown parameter %d\n", args->param);
  return -EINVAL;
 }
}

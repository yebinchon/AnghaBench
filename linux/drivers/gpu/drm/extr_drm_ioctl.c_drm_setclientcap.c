
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_set_client_cap {int capability; int value; } ;
struct drm_file {int stereo_allowed; int universal_planes; int atomic; int aspect_ratio_allowed; int writeback_connectors; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {char* comm; } ;


 int DRIVER_ATOMIC ;
 int DRIVER_MODESET ;





 int EINVAL ;
 int EOPNOTSUPP ;
 TYPE_1__* current ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int pr_info (char*) ;

__attribute__((used)) static int
drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 struct drm_set_client_cap *req = data;




 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EOPNOTSUPP;

 switch (req->capability) {
 case 130:
  if (req->value > 1)
   return -EINVAL;
  file_priv->stereo_allowed = req->value;
  break;
 case 129:
  if (req->value > 1)
   return -EINVAL;
  file_priv->universal_planes = req->value;
  break;
 case 131:
  if (!drm_core_check_feature(dev, DRIVER_ATOMIC))
   return -EOPNOTSUPP;

  if (current->comm[0] == 'X' && req->value == 1) {
   pr_info("broken atomic modeset userspace detected, disabling atomic\n");
   return -EOPNOTSUPP;
  }
  if (req->value > 2)
   return -EINVAL;
  file_priv->atomic = req->value;
  file_priv->universal_planes = req->value;



  file_priv->aspect_ratio_allowed = req->value;
  break;
 case 132:
  if (req->value > 1)
   return -EINVAL;
  file_priv->aspect_ratio_allowed = req->value;
  break;
 case 128:
  if (!file_priv->atomic)
   return -EINVAL;
  if (req->value > 1)
   return -EINVAL;
  file_priv->writeback_connectors = req->value;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}

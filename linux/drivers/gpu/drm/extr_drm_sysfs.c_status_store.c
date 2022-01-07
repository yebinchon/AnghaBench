
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mutex; int max_height; int max_width; } ;
struct drm_device {TYPE_3__ mode_config; } ;
struct TYPE_4__ {int id; } ;
struct drm_connector {int force; TYPE_2__* funcs; int name; TYPE_1__ base; struct drm_device* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum drm_connector_force { ____Placeholder_drm_connector_force } drm_connector_force ;
struct TYPE_5__ {int (* fill_modes ) (struct drm_connector*,int ,int ) ;} ;


 int DRM_DEBUG_KMS (char*,int ,int ,int,int) ;
 int DRM_FORCE_OFF ;
 int DRM_FORCE_ON ;
 int DRM_FORCE_ON_DIGITAL ;
 int EINVAL ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_connector*,int ,int ) ;
 scalar_t__ sysfs_streq (char const*,char*) ;
 struct drm_connector* to_drm_connector (struct device*) ;

__attribute__((used)) static ssize_t status_store(struct device *device,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct drm_connector *connector = to_drm_connector(device);
 struct drm_device *dev = connector->dev;
 enum drm_connector_force old_force;
 int ret;

 ret = mutex_lock_interruptible(&dev->mode_config.mutex);
 if (ret)
  return ret;

 old_force = connector->force;

 if (sysfs_streq(buf, "detect"))
  connector->force = 0;
 else if (sysfs_streq(buf, "on"))
  connector->force = DRM_FORCE_ON;
 else if (sysfs_streq(buf, "on-digital"))
  connector->force = DRM_FORCE_ON_DIGITAL;
 else if (sysfs_streq(buf, "off"))
  connector->force = DRM_FORCE_OFF;
 else
  ret = -EINVAL;

 if (old_force != connector->force || !connector->force) {
  DRM_DEBUG_KMS("[CONNECTOR:%d:%s] force updated from %d to %d or reprobing\n",
         connector->base.id,
         connector->name,
         old_force, connector->force);

  connector->funcs->fill_modes(connector,
          dev->mode_config.max_width,
          dev->mode_config.max_height);
 }

 mutex_unlock(&dev->mode_config.mutex);

 return ret ? ret : count;
}

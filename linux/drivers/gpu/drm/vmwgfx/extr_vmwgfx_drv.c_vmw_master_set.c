
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_sysfs_hotplug_event (struct drm_device*) ;

__attribute__((used)) static int vmw_master_set(struct drm_device *dev,
     struct drm_file *file_priv,
     bool from_open)
{




 if (!from_open)
  drm_sysfs_hotplug_event(dev);

 return 0;
}

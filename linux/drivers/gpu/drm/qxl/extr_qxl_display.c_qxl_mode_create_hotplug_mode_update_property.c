
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int ddev; scalar_t__ hotplug_mode_update_property; } ;


 int DRM_MODE_PROP_IMMUTABLE ;
 scalar_t__ drm_property_create_range (int *,int ,char*,int ,int) ;

__attribute__((used)) static int qxl_mode_create_hotplug_mode_update_property(struct qxl_device *qdev)
{
 if (qdev->hotplug_mode_update_property)
  return 0;

 qdev->hotplug_mode_update_property =
  drm_property_create_range(&qdev->ddev, DRM_MODE_PROP_IMMUTABLE,
       "hotplug_mode_update", 0, 1);

 return 0;
}

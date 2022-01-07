
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_minor {TYPE_2__* kdev; scalar_t__ index; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ kobj; } ;


 int DRIVER_MODESET ;
 int DRM_MINOR_PRIMARY ;
 int GFP_KERNEL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_minor** drm_minor_get_slot (struct drm_device*,int ) ;
 char* kasprintf (int ,char*,scalar_t__) ;
 int kfree (char*) ;
 int sysfs_remove_link (int ,char*) ;

__attribute__((used)) static void remove_compat_control_link(struct drm_device *dev)
{
 struct drm_minor *minor;
 char *name;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return;

 minor = *drm_minor_get_slot(dev, DRM_MINOR_PRIMARY);
 if (!minor)
  return;

 name = kasprintf(GFP_KERNEL, "controlD%d", minor->index + 64);
 if (!name)
  return;

 sysfs_remove_link(minor->kdev->kobj.parent, name);

 kfree(name);
}

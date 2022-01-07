
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_minor {TYPE_1__* kdev; scalar_t__ index; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {TYPE_2__ kobj; } ;


 int DRIVER_MODESET ;
 int DRM_MINOR_PRIMARY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_minor** drm_minor_get_slot (struct drm_device*,int ) ;
 char* kasprintf (int ,char*,scalar_t__) ;
 int kfree (char*) ;
 int sysfs_create_link (int ,TYPE_2__*,char*) ;

__attribute__((used)) static int create_compat_control_link(struct drm_device *dev)
{
 struct drm_minor *minor;
 char *name;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return 0;

 minor = *drm_minor_get_slot(dev, DRM_MINOR_PRIMARY);
 if (!minor)
  return 0;
 name = kasprintf(GFP_KERNEL, "controlD%d", minor->index + 64);
 if (!name)
  return -ENOMEM;

 ret = sysfs_create_link(minor->kdev->kobj.parent,
    &minor->kdev->kobj,
    name);

 kfree(name);

 return ret;
}

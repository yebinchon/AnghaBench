
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* primary; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct device {int kobj; } ;
struct TYPE_3__ {struct device* kdev; } ;


 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int device_remove_bin_file (struct device*,int *) ;
 int dpf_attrs ;
 int dpf_attrs_1 ;
 int gen6_attrs ;
 int i915_teardown_error_capture (struct device*) ;
 int rc6_attr_group ;
 int rc6p_attr_group ;
 int sysfs_remove_files (int *,int ) ;
 int sysfs_unmerge_group (int *,int *) ;
 int vlv_attrs ;

void i915_teardown_sysfs(struct drm_i915_private *dev_priv)
{
 struct device *kdev = dev_priv->drm.primary->kdev;

 i915_teardown_error_capture(kdev);

 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  sysfs_remove_files(&kdev->kobj, vlv_attrs);
 else
  sysfs_remove_files(&kdev->kobj, gen6_attrs);
 device_remove_bin_file(kdev, &dpf_attrs_1);
 device_remove_bin_file(kdev, &dpf_attrs);




}

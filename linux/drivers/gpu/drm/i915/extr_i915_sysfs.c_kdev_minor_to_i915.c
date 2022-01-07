
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int dev; } ;
struct drm_i915_private {int dummy; } ;
struct device {int dummy; } ;


 struct drm_minor* dev_get_drvdata (struct device*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static inline struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)
{
 struct drm_minor *minor = dev_get_drvdata(kdev);
 return to_i915(minor->dev);
}

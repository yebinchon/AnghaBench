
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct device {int dummy; } ;


 struct drm_i915_private* dev_get_drvdata (struct device*) ;

__attribute__((used)) static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
{
 return dev_get_drvdata(kdev);
}

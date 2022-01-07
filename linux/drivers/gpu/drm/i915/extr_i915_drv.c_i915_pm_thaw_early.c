
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int i915_pm_resume_early (struct device*) ;

__attribute__((used)) static int i915_pm_thaw_early(struct device *kdev)
{
 return i915_pm_resume_early(kdev);
}

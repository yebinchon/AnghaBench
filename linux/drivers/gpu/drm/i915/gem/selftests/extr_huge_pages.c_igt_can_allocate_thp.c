
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gemfs; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 scalar_t__ has_transparent_hugepage () ;

__attribute__((used)) static inline bool igt_can_allocate_thp(struct drm_i915_private *i915)
{
 return i915->mm.gemfs && has_transparent_hugepage();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int gen9_gt_workarounds_init (struct drm_i915_private*,struct i915_wa_list*) ;

__attribute__((used)) static void
glk_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
 gen9_gt_workarounds_init(i915, wal);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g4x_wm_values {int cxsr; } ;
struct TYPE_2__ {struct g4x_wm_values g4x; } ;
struct drm_i915_private {TYPE_1__ wm; } ;
typedef int new_wm ;


 int _intel_set_memory_cxsr (struct drm_i915_private*,int) ;
 int g4x_merge_wm (struct drm_i915_private*,struct g4x_wm_values*) ;
 int g4x_write_wm_values (struct drm_i915_private*,struct g4x_wm_values*) ;
 scalar_t__ is_disabling (int ,int ,int) ;
 scalar_t__ is_enabling (int ,int ,int) ;
 scalar_t__ memcmp (struct g4x_wm_values*,struct g4x_wm_values*,int) ;

__attribute__((used)) static void g4x_program_watermarks(struct drm_i915_private *dev_priv)
{
 struct g4x_wm_values *old_wm = &dev_priv->wm.g4x;
 struct g4x_wm_values new_wm = {};

 g4x_merge_wm(dev_priv, &new_wm);

 if (memcmp(old_wm, &new_wm, sizeof(new_wm)) == 0)
  return;

 if (is_disabling(old_wm->cxsr, new_wm.cxsr, 1))
  _intel_set_memory_cxsr(dev_priv, 0);

 g4x_write_wm_values(dev_priv, &new_wm);

 if (is_enabling(old_wm->cxsr, new_wm.cxsr, 1))
  _intel_set_memory_cxsr(dev_priv, 1);

 *old_wm = new_wm;
}

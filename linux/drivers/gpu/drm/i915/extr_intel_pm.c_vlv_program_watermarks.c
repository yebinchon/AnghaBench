
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlv_wm_values {int level; int cxsr; } ;
struct TYPE_2__ {struct vlv_wm_values vlv; } ;
struct drm_i915_private {TYPE_1__ wm; } ;
typedef int new_wm ;


 int VLV_WM_LEVEL_DDR_DVFS ;
 int VLV_WM_LEVEL_PM5 ;
 int _intel_set_memory_cxsr (struct drm_i915_private*,int) ;
 int chv_set_memory_dvfs (struct drm_i915_private*,int) ;
 int chv_set_memory_pm5 (struct drm_i915_private*,int) ;
 scalar_t__ is_disabling (int ,int ,int) ;
 scalar_t__ is_enabling (int ,int ,int) ;
 scalar_t__ memcmp (struct vlv_wm_values*,struct vlv_wm_values*,int) ;
 int vlv_merge_wm (struct drm_i915_private*,struct vlv_wm_values*) ;
 int vlv_write_wm_values (struct drm_i915_private*,struct vlv_wm_values*) ;

__attribute__((used)) static void vlv_program_watermarks(struct drm_i915_private *dev_priv)
{
 struct vlv_wm_values *old_wm = &dev_priv->wm.vlv;
 struct vlv_wm_values new_wm = {};

 vlv_merge_wm(dev_priv, &new_wm);

 if (memcmp(old_wm, &new_wm, sizeof(new_wm)) == 0)
  return;

 if (is_disabling(old_wm->level, new_wm.level, VLV_WM_LEVEL_DDR_DVFS))
  chv_set_memory_dvfs(dev_priv, 0);

 if (is_disabling(old_wm->level, new_wm.level, VLV_WM_LEVEL_PM5))
  chv_set_memory_pm5(dev_priv, 0);

 if (is_disabling(old_wm->cxsr, new_wm.cxsr, 1))
  _intel_set_memory_cxsr(dev_priv, 0);

 vlv_write_wm_values(dev_priv, &new_wm);

 if (is_enabling(old_wm->cxsr, new_wm.cxsr, 1))
  _intel_set_memory_cxsr(dev_priv, 1);

 if (is_enabling(old_wm->level, new_wm.level, VLV_WM_LEVEL_PM5))
  chv_set_memory_pm5(dev_priv, 1);

 if (is_enabling(old_wm->level, new_wm.level, VLV_WM_LEVEL_DDR_DVFS))
  chv_set_memory_dvfs(dev_priv, 1);

 *old_wm = new_wm;
}

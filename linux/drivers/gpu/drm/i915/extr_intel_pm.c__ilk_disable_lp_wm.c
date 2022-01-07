
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ilk_wm_values {int* wm_lp; } ;
struct TYPE_2__ {struct ilk_wm_values hw; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 int I915_WRITE (int ,int) ;
 int WM1_LP_ILK ;
 int WM1_LP_SR_EN ;
 int WM2_LP_ILK ;
 int WM3_LP_ILK ;
 unsigned int WM_DIRTY_LP (int) ;

__attribute__((used)) static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
          unsigned int dirty)
{
 struct ilk_wm_values *previous = &dev_priv->wm.hw;
 bool changed = 0;

 if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM1_LP_SR_EN) {
  previous->wm_lp[2] &= ~WM1_LP_SR_EN;
  I915_WRITE(WM3_LP_ILK, previous->wm_lp[2]);
  changed = 1;
 }
 if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] & WM1_LP_SR_EN) {
  previous->wm_lp[1] &= ~WM1_LP_SR_EN;
  I915_WRITE(WM2_LP_ILK, previous->wm_lp[1]);
  changed = 1;
 }
 if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] & WM1_LP_SR_EN) {
  previous->wm_lp[0] &= ~WM1_LP_SR_EN;
  I915_WRITE(WM1_LP_ILK, previous->wm_lp[0]);
  changed = 1;
 }






 return changed;
}

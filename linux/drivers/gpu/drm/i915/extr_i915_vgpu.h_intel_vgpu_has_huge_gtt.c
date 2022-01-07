
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int caps; } ;
struct drm_i915_private {TYPE_1__ vgpu; } ;


 int VGT_CAPS_HUGE_GTT ;

__attribute__((used)) static inline bool
intel_vgpu_has_huge_gtt(struct drm_i915_private *dev_priv)
{
 return dev_priv->vgpu.caps & VGT_CAPS_HUGE_GTT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parser_exec_state {TYPE_2__* vgpu; } ;
struct mi_display_flip_command_info {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {TYPE_1__* gvt; } ;
struct TYPE_3__ {struct drm_i915_private* dev_priv; } ;


 int ENODEV ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 int gen8_decode_mi_display_flip (struct parser_exec_state*,struct mi_display_flip_command_info*) ;
 int skl_decode_mi_display_flip (struct parser_exec_state*,struct mi_display_flip_command_info*) ;

__attribute__((used)) static int decode_mi_display_flip(struct parser_exec_state *s,
  struct mi_display_flip_command_info *info)
{
 struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;

 if (IS_BROADWELL(dev_priv))
  return gen8_decode_mi_display_flip(s, info);
 if (INTEL_GEN(dev_priv) >= 9)
  return skl_decode_mi_display_flip(s, info);

 return -ENODEV;
}

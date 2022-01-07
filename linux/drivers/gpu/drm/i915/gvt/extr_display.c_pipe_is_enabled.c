
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int EINVAL ;
 int I915_MAX_PIPES ;
 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int PIPE_A ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ edp_pipe_is_enabled (struct intel_vgpu*) ;
 int get_edp_pipe (struct intel_vgpu*) ;
 int vgpu_vreg_t (struct intel_vgpu*,int ) ;

int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

 if (WARN_ON(pipe < PIPE_A || pipe >= I915_MAX_PIPES))
  return -EINVAL;

 if (vgpu_vreg_t(vgpu, PIPECONF(pipe)) & PIPECONF_ENABLE)
  return 1;

 if (edp_pipe_is_enabled(vgpu) &&
   get_edp_pipe(vgpu) == pipe)
  return 1;
 return 0;
}

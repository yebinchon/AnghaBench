
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int PIPECONF (int ) ;
 int PIPECONF_ENABLE ;
 int TRANS_DDI_FUNC_ENABLE ;
 int _PIPE_EDP ;
 int _TRANS_DDI_FUNC_CTL_EDP ;
 int vgpu_vreg (struct intel_vgpu*,int ) ;
 int vgpu_vreg_t (struct intel_vgpu*,int ) ;

__attribute__((used)) static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

 if (!(vgpu_vreg_t(vgpu, PIPECONF(_PIPE_EDP)) & PIPECONF_ENABLE))
  return 0;

 if (!(vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP) & TRANS_DDI_FUNC_ENABLE))
  return 0;
 return 1;
}

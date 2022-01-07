
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_gem_address_space {int dummy; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct dpu_plane_state {int multirect_index; } ;
struct dpu_plane {TYPE_3__* pipe_hw; int base; } ;
struct TYPE_4__ {struct msm_gem_address_space* aspace; } ;
struct dpu_kms {TYPE_1__ base; } ;
struct dpu_hw_pipe_cfg {int layout; } ;
struct TYPE_5__ {int (* setup_sourceaddress ) (TYPE_3__*,struct dpu_hw_pipe_cfg*,int ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; int idx; } ;


 int DPU_DEBUG_PLANE (struct dpu_plane*,char*) ;
 int DPU_ERROR_PLANE (struct dpu_plane*,char*,int) ;
 int EAGAIN ;
 struct dpu_kms* _dpu_plane_get_kms (int *) ;
 int dpu_format_populate_layout (struct msm_gem_address_space*,struct drm_framebuffer*,int *) ;
 int stub1 (TYPE_3__*,struct dpu_hw_pipe_cfg*,int ) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;
 int trace_dpu_plane_set_scanout (int ,int *,int ) ;

__attribute__((used)) static void _dpu_plane_set_scanout(struct drm_plane *plane,
  struct dpu_plane_state *pstate,
  struct dpu_hw_pipe_cfg *pipe_cfg,
  struct drm_framebuffer *fb)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);
 struct dpu_kms *kms = _dpu_plane_get_kms(&pdpu->base);
 struct msm_gem_address_space *aspace = kms->base.aspace;
 int ret;

 ret = dpu_format_populate_layout(aspace, fb, &pipe_cfg->layout);
 if (ret == -EAGAIN)
  DPU_DEBUG_PLANE(pdpu, "not updating same src addrs\n");
 else if (ret)
  DPU_ERROR_PLANE(pdpu, "failed to get format layout, %d\n", ret);
 else if (pdpu->pipe_hw->ops.setup_sourceaddress) {
  trace_dpu_plane_set_scanout(pdpu->pipe_hw->idx,
         &pipe_cfg->layout,
         pstate->multirect_index);
  pdpu->pipe_hw->ops.setup_sourceaddress(pdpu->pipe_hw, pipe_cfg,
      pstate->multirect_index);
 }
}

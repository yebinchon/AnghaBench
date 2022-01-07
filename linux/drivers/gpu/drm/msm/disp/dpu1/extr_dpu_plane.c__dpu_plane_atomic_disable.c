
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane_state {int dummy; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct dpu_plane_state {int pending; int multirect_mode; } ;
struct dpu_plane {TYPE_2__* pipe_hw; } ;
struct TYPE_3__ {int (* setup_multirect ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int DPU_SSPP_MULTIRECT_NONE ;
 int DPU_SSPP_RECT_SOLO ;
 int DRMID (struct drm_plane*) ;
 scalar_t__ is_dpu_plane_virtual (struct drm_plane*) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;
 struct dpu_plane_state* to_dpu_plane_state (struct drm_plane_state*) ;
 int trace_dpu_plane_disable (int ,scalar_t__,int ) ;

__attribute__((used)) static void _dpu_plane_atomic_disable(struct drm_plane *plane)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);
 struct drm_plane_state *state = plane->state;
 struct dpu_plane_state *pstate = to_dpu_plane_state(state);

 trace_dpu_plane_disable(DRMID(plane), is_dpu_plane_virtual(plane),
    pstate->multirect_mode);

 pstate->pending = 1;

 if (is_dpu_plane_virtual(plane) &&
   pdpu->pipe_hw && pdpu->pipe_hw->ops.setup_multirect)
  pdpu->pipe_hw->ops.setup_multirect(pdpu->pipe_hw,
    DPU_SSPP_RECT_SOLO, DPU_SSPP_MULTIRECT_NONE);
}

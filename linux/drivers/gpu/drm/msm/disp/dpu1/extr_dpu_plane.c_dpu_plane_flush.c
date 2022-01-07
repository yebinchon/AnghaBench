
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane {scalar_t__ state; } ;
struct dpu_plane_state {int pending; } ;
struct dpu_plane {int color_fill; scalar_t__ csc_ptr; TYPE_2__* pipe_hw; scalar_t__ is_error; } ;
struct TYPE_3__ {int (* setup_csc ) (TYPE_2__*,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int DPU_ERROR (char*) ;
 int DPU_PLANE_COLOR_FILL_FLAG ;
 int _dpu_plane_color_fill (struct dpu_plane*,int,int) ;
 int stub1 (TYPE_2__*,scalar_t__) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;
 struct dpu_plane_state* to_dpu_plane_state (scalar_t__) ;

void dpu_plane_flush(struct drm_plane *plane)
{
 struct dpu_plane *pdpu;
 struct dpu_plane_state *pstate;

 if (!plane || !plane->state) {
  DPU_ERROR("invalid plane\n");
  return;
 }

 pdpu = to_dpu_plane(plane);
 pstate = to_dpu_plane_state(plane->state);





 if (pdpu->is_error)

  _dpu_plane_color_fill(pdpu, 0xFFFFFF, 0xFF);
 else if (pdpu->color_fill & DPU_PLANE_COLOR_FILL_FLAG)

  _dpu_plane_color_fill(pdpu, pdpu->color_fill, 0xFF);
 else if (pdpu->pipe_hw && pdpu->csc_ptr && pdpu->pipe_hw->ops.setup_csc)
  pdpu->pipe_hw->ops.setup_csc(pdpu->pipe_hw, pdpu->csc_ptr);


 if (plane->state)
  pstate->pending = 0;
}

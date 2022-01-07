
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_plane {int state; } ;
struct dpu_plane_state {scalar_t__ multirect_index; int scaler3_cfg; int pixel_ext; } ;
struct TYPE_10__ {int y2; int x2; scalar_t__ y1; scalar_t__ x1; } ;
struct TYPE_13__ {int dst_rect; TYPE_1__ src_rect; } ;
struct dpu_plane {TYPE_4__ pipe_cfg; TYPE_3__* pipe_hw; struct drm_plane base; } ;
struct dpu_format {int dummy; } ;
struct TYPE_11__ {int (* setup_scaler ) (TYPE_3__*,TYPE_4__*,int *,int *) ;int (* setup_pe ) (TYPE_3__*,int *) ;int (* setup_rects ) (TYPE_3__*,TYPE_4__*,scalar_t__) ;int (* setup_format ) (TYPE_3__*,struct dpu_format const*,int ,scalar_t__) ;int (* setup_solidfill ) (TYPE_3__*,int,scalar_t__) ;} ;
struct TYPE_12__ {TYPE_2__ ops; } ;


 int DPU_DEBUG_PLANE (struct dpu_plane*,char*) ;
 scalar_t__ DPU_SSPP_RECT_1 ;
 int DPU_SSPP_SOLID_FILL ;
 int DRM_FORMAT_ABGR8888 ;
 int _dpu_plane_setup_scaler (struct dpu_plane*,struct dpu_plane_state*,struct dpu_format const*,int) ;
 struct dpu_format* dpu_get_dpu_format (int ) ;
 int drm_rect_height (int *) ;
 int drm_rect_width (int *) ;
 int stub1 (TYPE_3__*,int,scalar_t__) ;
 int stub2 (TYPE_3__*,struct dpu_format const*,int ,scalar_t__) ;
 int stub3 (TYPE_3__*,TYPE_4__*,scalar_t__) ;
 int stub4 (TYPE_3__*,int *) ;
 int stub5 (TYPE_3__*,TYPE_4__*,int *,int *) ;
 struct dpu_plane_state* to_dpu_plane_state (int ) ;

__attribute__((used)) static int _dpu_plane_color_fill(struct dpu_plane *pdpu,
  uint32_t color, uint32_t alpha)
{
 const struct dpu_format *fmt;
 const struct drm_plane *plane = &pdpu->base;
 struct dpu_plane_state *pstate = to_dpu_plane_state(plane->state);

 DPU_DEBUG_PLANE(pdpu, "\n");





 fmt = dpu_get_dpu_format(DRM_FORMAT_ABGR8888);


 if (fmt && pdpu->pipe_hw->ops.setup_solidfill) {
  pdpu->pipe_hw->ops.setup_solidfill(pdpu->pipe_hw,
    (color & 0xFFFFFF) | ((alpha & 0xFF) << 24),
    pstate->multirect_index);


  pdpu->pipe_cfg.src_rect.x1 = 0;
  pdpu->pipe_cfg.src_rect.y1 = 0;
  pdpu->pipe_cfg.src_rect.x2 =
   drm_rect_width(&pdpu->pipe_cfg.dst_rect);
  pdpu->pipe_cfg.src_rect.y2 =
   drm_rect_height(&pdpu->pipe_cfg.dst_rect);
  _dpu_plane_setup_scaler(pdpu, pstate, fmt, 1);

  if (pdpu->pipe_hw->ops.setup_format)
   pdpu->pipe_hw->ops.setup_format(pdpu->pipe_hw,
     fmt, DPU_SSPP_SOLID_FILL,
     pstate->multirect_index);

  if (pdpu->pipe_hw->ops.setup_rects)
   pdpu->pipe_hw->ops.setup_rects(pdpu->pipe_hw,
     &pdpu->pipe_cfg,
     pstate->multirect_index);

  if (pdpu->pipe_hw->ops.setup_pe)
   pdpu->pipe_hw->ops.setup_pe(pdpu->pipe_hw,
     &pstate->pixel_ext);

  if (pdpu->pipe_hw->ops.setup_scaler &&
    pstate->multirect_index != DPU_SSPP_RECT_1)
   pdpu->pipe_hw->ops.setup_scaler(pdpu->pipe_hw,
     &pdpu->pipe_cfg, &pstate->pixel_ext,
     &pstate->scaler3_cfg);
 }

 return 0;
}

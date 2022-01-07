
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_plane {int dummy; } ;
struct drm_crtc {int mode; } ;
struct dpu_vbif_set_ot_params {int is_wfd; int rd; int clk_ctrl; int vbif_idx; int frame_rate; int height; int width; scalar_t__ num; int xin_id; } ;
struct TYPE_4__ {int src_rect; } ;
struct dpu_plane {TYPE_3__* pipe_hw; int is_rt_pipe; TYPE_1__ pipe_cfg; } ;
struct dpu_kms {int dummy; } ;
typedef int ot_params ;
struct TYPE_6__ {TYPE_2__* cap; scalar_t__ idx; } ;
struct TYPE_5__ {int clk_ctrl; int xin_id; } ;


 scalar_t__ SSPP_NONE ;
 int VBIF_RT ;
 struct dpu_kms* _dpu_plane_get_kms (struct drm_plane*) ;
 int dpu_vbif_set_ot_limit (struct dpu_kms*,struct dpu_vbif_set_ot_params*) ;
 int drm_mode_vrefresh (int *) ;
 int drm_rect_height (int *) ;
 int drm_rect_width (int *) ;
 int memset (struct dpu_vbif_set_ot_params*,int ,int) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

__attribute__((used)) static void _dpu_plane_set_ot_limit(struct drm_plane *plane,
  struct drm_crtc *crtc)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);
 struct dpu_vbif_set_ot_params ot_params;
 struct dpu_kms *dpu_kms = _dpu_plane_get_kms(plane);

 memset(&ot_params, 0, sizeof(ot_params));
 ot_params.xin_id = pdpu->pipe_hw->cap->xin_id;
 ot_params.num = pdpu->pipe_hw->idx - SSPP_NONE;
 ot_params.width = drm_rect_width(&pdpu->pipe_cfg.src_rect);
 ot_params.height = drm_rect_height(&pdpu->pipe_cfg.src_rect);
 ot_params.is_wfd = !pdpu->is_rt_pipe;
 ot_params.frame_rate = drm_mode_vrefresh(&crtc->mode);
 ot_params.vbif_idx = VBIF_RT;
 ot_params.clk_ctrl = pdpu->pipe_hw->cap->clk_ctrl;
 ot_params.rd = 1;

 dpu_vbif_set_ot_limit(dpu_kms, &ot_params);
}

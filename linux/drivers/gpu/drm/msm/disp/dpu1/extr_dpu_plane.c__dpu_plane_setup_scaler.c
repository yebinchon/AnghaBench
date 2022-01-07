
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_format_info {int vsub; int hsub; } ;
struct dpu_plane_state {int scaler3_cfg; } ;
struct TYPE_4__ {int dst_rect; int src_rect; } ;
struct dpu_plane {TYPE_2__ pipe_cfg; } ;
struct TYPE_3__ {int pixel_format; } ;
struct dpu_format {TYPE_1__ base; } ;


 int _dpu_plane_setup_scaler3 (struct dpu_plane*,struct dpu_plane_state*,int ,int ,int ,int ,int *,struct dpu_format const*,int ,int ) ;
 struct drm_format_info* drm_format_info (int ) ;
 int drm_rect_height (int *) ;
 int drm_rect_width (int *) ;

__attribute__((used)) static void _dpu_plane_setup_scaler(struct dpu_plane *pdpu,
  struct dpu_plane_state *pstate,
  const struct dpu_format *fmt, bool color_fill)
{
 const struct drm_format_info *info = drm_format_info(fmt->base.pixel_format);



 _dpu_plane_setup_scaler3(pdpu, pstate,
   drm_rect_width(&pdpu->pipe_cfg.src_rect),
   drm_rect_height(&pdpu->pipe_cfg.src_rect),
   drm_rect_width(&pdpu->pipe_cfg.dst_rect),
   drm_rect_height(&pdpu->pipe_cfg.dst_rect),
   &pstate->scaler3_cfg, fmt,
   info->hsub, info->vsub);
}

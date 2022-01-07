
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_12__ {int id; } ;
struct drm_plane {TYPE_4__ base; } ;
struct drm_framebuffer {int modifier; TYPE_1__* format; } ;
struct TYPE_16__ {void* safe_lut; void* danger_lut; } ;
struct dpu_plane {TYPE_8__ pipe_qos_cfg; TYPE_7__* pipe_hw; scalar_t__ pipe; TYPE_3__* catalog; int is_rt_pipe; } ;
struct TYPE_13__ {int pixel_format; } ;
struct dpu_format {int fetch_mode; TYPE_5__ base; } ;
struct TYPE_14__ {int (* setup_danger_safe_lut ) (TYPE_7__*,TYPE_8__*) ;} ;
struct TYPE_15__ {TYPE_6__ ops; } ;
struct TYPE_10__ {void** safe_lut_tbl; void** danger_lut_tbl; } ;
struct TYPE_11__ {TYPE_2__ perf; } ;
struct TYPE_9__ {int format; } ;


 int DPU_DEBUG (char*,int ,scalar_t__,char*,int,void*,void*) ;
 scalar_t__ DPU_FORMAT_IS_LINEAR (struct dpu_format const*) ;
 size_t DPU_QOS_LUT_USAGE_LINEAR ;
 size_t DPU_QOS_LUT_USAGE_MACROTILE ;
 size_t DPU_QOS_LUT_USAGE_NRT ;
 scalar_t__ SSPP_VIG0 ;
 struct dpu_format* dpu_get_dpu_format_ext (int ,int ) ;
 int stub1 (TYPE_7__*,TYPE_8__*) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;
 int trace_dpu_perf_set_danger_luts (scalar_t__,int ,int,void*,void*) ;

__attribute__((used)) static void _dpu_plane_set_danger_lut(struct drm_plane *plane,
  struct drm_framebuffer *fb)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);
 const struct dpu_format *fmt = ((void*)0);
 u32 danger_lut, safe_lut;

 if (!pdpu->is_rt_pipe) {
  danger_lut = pdpu->catalog->perf.danger_lut_tbl
    [DPU_QOS_LUT_USAGE_NRT];
  safe_lut = pdpu->catalog->perf.safe_lut_tbl
    [DPU_QOS_LUT_USAGE_NRT];
 } else {
  fmt = dpu_get_dpu_format_ext(
    fb->format->format,
    fb->modifier);

  if (fmt && DPU_FORMAT_IS_LINEAR(fmt)) {
   danger_lut = pdpu->catalog->perf.danger_lut_tbl
     [DPU_QOS_LUT_USAGE_LINEAR];
   safe_lut = pdpu->catalog->perf.safe_lut_tbl
     [DPU_QOS_LUT_USAGE_LINEAR];
  } else {
   danger_lut = pdpu->catalog->perf.danger_lut_tbl
     [DPU_QOS_LUT_USAGE_MACROTILE];
   safe_lut = pdpu->catalog->perf.safe_lut_tbl
     [DPU_QOS_LUT_USAGE_MACROTILE];
  }
 }

 pdpu->pipe_qos_cfg.danger_lut = danger_lut;
 pdpu->pipe_qos_cfg.safe_lut = safe_lut;

 trace_dpu_perf_set_danger_luts(pdpu->pipe - SSPP_VIG0,
   (fmt) ? fmt->base.pixel_format : 0,
   (fmt) ? fmt->fetch_mode : 0,
   pdpu->pipe_qos_cfg.danger_lut,
   pdpu->pipe_qos_cfg.safe_lut);

 DPU_DEBUG("plane%u: pnum:%d fmt: %4.4s mode:%d luts[0x%x, 0x%x]\n",
  plane->base.id,
  pdpu->pipe - SSPP_VIG0,
  fmt ? (char *)&fmt->base.pixel_format : ((void*)0),
  fmt ? fmt->fetch_mode : -1,
  pdpu->pipe_qos_cfg.danger_lut,
  pdpu->pipe_qos_cfg.safe_lut);

 pdpu->pipe_hw->ops.setup_danger_safe_lut(pdpu->pipe_hw,
   &pdpu->pipe_qos_cfg);
}

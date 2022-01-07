
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_14__ {int id; } ;
struct drm_plane {TYPE_5__ base; } ;
struct drm_framebuffer {int modifier; TYPE_1__* format; } ;
struct TYPE_18__ {int creq_lut; } ;
struct TYPE_11__ {int src_rect; } ;
struct dpu_plane {TYPE_9__ pipe_qos_cfg; TYPE_8__* pipe_hw; int is_rt_pipe; scalar_t__ pipe; TYPE_4__* catalog; TYPE_2__ pipe_cfg; } ;
struct TYPE_15__ {int pixel_format; } ;
struct dpu_format {TYPE_6__ base; } ;
struct TYPE_16__ {int (* setup_creq_lut ) (TYPE_8__*,TYPE_9__*) ;} ;
struct TYPE_17__ {TYPE_7__ ops; } ;
struct TYPE_12__ {int * qos_lut_tbl; } ;
struct TYPE_13__ {TYPE_3__ perf; } ;
struct TYPE_10__ {int format; } ;


 int DPU_DEBUG (char*,int ,scalar_t__,char*,int ,size_t,int ) ;
 scalar_t__ DPU_FORMAT_IS_LINEAR (struct dpu_format const*) ;
 size_t DPU_QOS_LUT_USAGE_LINEAR ;
 size_t DPU_QOS_LUT_USAGE_MACROTILE ;
 size_t DPU_QOS_LUT_USAGE_NRT ;
 scalar_t__ SSPP_VIG0 ;
 size_t _dpu_plane_calc_fill_level (struct drm_plane*,struct dpu_format const*,int ) ;
 int _dpu_plane_get_qos_lut (int *,size_t) ;
 struct dpu_format* dpu_get_dpu_format_ext (int ,int ) ;
 int drm_rect_width (int *) ;
 int stub1 (TYPE_8__*,TYPE_9__*) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;
 int trace_dpu_perf_set_qos_luts (scalar_t__,int ,int ,size_t,int ,size_t) ;

__attribute__((used)) static void _dpu_plane_set_qos_lut(struct drm_plane *plane,
  struct drm_framebuffer *fb)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);
 const struct dpu_format *fmt = ((void*)0);
 u64 qos_lut;
 u32 total_fl = 0, lut_usage;

 if (!pdpu->is_rt_pipe) {
  lut_usage = DPU_QOS_LUT_USAGE_NRT;
 } else {
  fmt = dpu_get_dpu_format_ext(
    fb->format->format,
    fb->modifier);
  total_fl = _dpu_plane_calc_fill_level(plane, fmt,
    drm_rect_width(&pdpu->pipe_cfg.src_rect));

  if (fmt && DPU_FORMAT_IS_LINEAR(fmt))
   lut_usage = DPU_QOS_LUT_USAGE_LINEAR;
  else
   lut_usage = DPU_QOS_LUT_USAGE_MACROTILE;
 }

 qos_lut = _dpu_plane_get_qos_lut(
   &pdpu->catalog->perf.qos_lut_tbl[lut_usage], total_fl);

 pdpu->pipe_qos_cfg.creq_lut = qos_lut;

 trace_dpu_perf_set_qos_luts(pdpu->pipe - SSPP_VIG0,
   (fmt) ? fmt->base.pixel_format : 0,
   pdpu->is_rt_pipe, total_fl, qos_lut, lut_usage);

 DPU_DEBUG("plane%u: pnum:%d fmt: %4.4s rt:%d fl:%u lut:0x%llx\n",
   plane->base.id,
   pdpu->pipe - SSPP_VIG0,
   fmt ? (char *)&fmt->base.pixel_format : ((void*)0),
   pdpu->is_rt_pipe, total_fl, qos_lut);

 pdpu->pipe_hw->ops.setup_creq_lut(pdpu->pipe_hw, &pdpu->pipe_qos_cfg);
}

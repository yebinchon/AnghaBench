
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int id; } ;
struct drm_plane {TYPE_2__ base; } ;
struct TYPE_10__ {int vblank_en; int danger_safe_en; int danger_vblank; scalar_t__ creq_vblank; } ;
struct dpu_plane {TYPE_5__ pipe_qos_cfg; TYPE_4__* pipe_hw; int is_rt_pipe; scalar_t__ pipe; TYPE_1__* pipe_sblk; } ;
struct TYPE_8__ {int (* setup_qos_ctrl ) (TYPE_4__*,TYPE_5__*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int danger_vblank; scalar_t__ creq_vblank; } ;


 int DPU_DEBUG (char*,int ,scalar_t__,int,int,scalar_t__,int ,int ) ;
 int DPU_PLANE_QOS_PANIC_CTRL ;
 int DPU_PLANE_QOS_VBLANK_AMORTIZE ;
 int DPU_PLANE_QOS_VBLANK_CTRL ;
 scalar_t__ SSPP_VIG0 ;
 int stub1 (TYPE_4__*,TYPE_5__*) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

__attribute__((used)) static void _dpu_plane_set_qos_ctrl(struct drm_plane *plane,
 bool enable, u32 flags)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);

 if (flags & DPU_PLANE_QOS_VBLANK_CTRL) {
  pdpu->pipe_qos_cfg.creq_vblank = pdpu->pipe_sblk->creq_vblank;
  pdpu->pipe_qos_cfg.danger_vblank =
    pdpu->pipe_sblk->danger_vblank;
  pdpu->pipe_qos_cfg.vblank_en = enable;
 }

 if (flags & DPU_PLANE_QOS_VBLANK_AMORTIZE) {

  pdpu->pipe_qos_cfg.vblank_en = 0;
  pdpu->pipe_qos_cfg.creq_vblank = 0;
 }

 if (flags & DPU_PLANE_QOS_PANIC_CTRL)
  pdpu->pipe_qos_cfg.danger_safe_en = enable;

 if (!pdpu->is_rt_pipe) {
  pdpu->pipe_qos_cfg.vblank_en = 0;
  pdpu->pipe_qos_cfg.danger_safe_en = 0;
 }

 DPU_DEBUG("plane%u: pnum:%d ds:%d vb:%d pri[0x%x, 0x%x] is_rt:%d\n",
  plane->base.id,
  pdpu->pipe - SSPP_VIG0,
  pdpu->pipe_qos_cfg.danger_safe_en,
  pdpu->pipe_qos_cfg.vblank_en,
  pdpu->pipe_qos_cfg.creq_vblank,
  pdpu->pipe_qos_cfg.danger_vblank,
  pdpu->is_rt_pipe);

 pdpu->pipe_hw->ops.setup_qos_ctrl(pdpu->pipe_hw,
   &pdpu->pipe_qos_cfg);
}

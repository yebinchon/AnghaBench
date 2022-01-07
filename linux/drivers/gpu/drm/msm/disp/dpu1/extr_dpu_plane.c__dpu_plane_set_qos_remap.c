
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct drm_plane {TYPE_3__ base; } ;
struct dpu_vbif_set_qos_params {int clk_ctrl; int is_rt; int xin_id; int vbif_idx; scalar_t__ num; } ;
struct dpu_plane {int is_rt_pipe; TYPE_2__* pipe_hw; } ;
struct dpu_kms {int dummy; } ;
typedef int qos_params ;
struct TYPE_5__ {scalar_t__ idx; TYPE_1__* cap; } ;
struct TYPE_4__ {int xin_id; int clk_ctrl; } ;


 int DPU_DEBUG (char*,int ,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ SSPP_VIG0 ;
 int VBIF_RT ;
 struct dpu_kms* _dpu_plane_get_kms (struct drm_plane*) ;
 int dpu_vbif_set_qos_remap (struct dpu_kms*,struct dpu_vbif_set_qos_params*) ;
 int memset (struct dpu_vbif_set_qos_params*,int ,int) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

__attribute__((used)) static void _dpu_plane_set_qos_remap(struct drm_plane *plane)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);
 struct dpu_vbif_set_qos_params qos_params;
 struct dpu_kms *dpu_kms = _dpu_plane_get_kms(plane);

 memset(&qos_params, 0, sizeof(qos_params));
 qos_params.vbif_idx = VBIF_RT;
 qos_params.clk_ctrl = pdpu->pipe_hw->cap->clk_ctrl;
 qos_params.xin_id = pdpu->pipe_hw->cap->xin_id;
 qos_params.num = pdpu->pipe_hw->idx - SSPP_VIG0;
 qos_params.is_rt = pdpu->is_rt_pipe;

 DPU_DEBUG("plane%d pipe:%d vbif:%d xin:%d rt:%d, clk_ctrl:%d\n",
   plane->base.id, qos_params.num,
   qos_params.vbif_idx,
   qos_params.xin_id, qos_params.is_rt,
   qos_params.clk_ctrl);

 dpu_vbif_set_qos_remap(dpu_kms, &qos_params);
}

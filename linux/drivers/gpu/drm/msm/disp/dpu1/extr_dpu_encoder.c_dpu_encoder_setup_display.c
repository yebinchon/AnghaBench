
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct msm_display_info {int intf_type; int num_of_h_tiles; int capabilities; int * h_tile_instance; } ;
struct dpu_kms {TYPE_2__* catalog; } ;
struct dpu_encoder_virt {int num_phys_encs; int enc_lock; struct dpu_encoder_phys** phys_encs; int idle_pc_supported; int enc_spinlock; int base; int * cur_master; } ;
struct dpu_encoder_phys {int underrun_cnt; int vsync_cnt; } ;
struct dpu_enc_phys_init_params {int intf_idx; int split_role; int * enc_spinlock; int * parent_ops; int * parent; struct dpu_kms* dpu_kms; } ;
typedef int phys_params ;
typedef enum dpu_intf_type { ____Placeholder_dpu_intf_type } dpu_intf_type ;
struct TYPE_4__ {TYPE_1__* caps; } ;
struct TYPE_3__ {int has_idle_pc; } ;


 int DPU_DEBUG (char*,...) ;
 int DPU_ERROR (char*,int,int) ;
 int DPU_ERROR_ENC (struct dpu_encoder_virt*,char*,...) ;

 int EINVAL ;
 int ENC_ROLE_MASTER ;
 int ENC_ROLE_SLAVE ;
 int ENC_ROLE_SOLO ;
 int INTF_DSI ;
 int INTF_MAX ;
 int MSM_DISPLAY_CAP_CMD_MODE ;
 int MSM_DISPLAY_CAP_VID_MODE ;
 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int dpu_encoder_get_intf (TYPE_2__*,int,int ) ;
 int dpu_encoder_parent_ops ;
 int dpu_encoder_virt_add_phys_encs (int,struct dpu_encoder_virt*,struct dpu_enc_phys_init_params*) ;
 int memset (struct dpu_enc_phys_init_params*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dpu_encoder_setup_display(struct dpu_encoder_virt *dpu_enc,
     struct dpu_kms *dpu_kms,
     struct msm_display_info *disp_info)
{
 int ret = 0;
 int i = 0;
 enum dpu_intf_type intf_type;
 struct dpu_enc_phys_init_params phys_params;

 if (!dpu_enc || !dpu_kms) {
  DPU_ERROR("invalid arg(s), enc %d kms %d\n",
    dpu_enc != 0, dpu_kms != 0);
  return -EINVAL;
 }

 dpu_enc->cur_master = ((void*)0);

 memset(&phys_params, 0, sizeof(phys_params));
 phys_params.dpu_kms = dpu_kms;
 phys_params.parent = &dpu_enc->base;
 phys_params.parent_ops = &dpu_encoder_parent_ops;
 phys_params.enc_spinlock = &dpu_enc->enc_spinlock;

 DPU_DEBUG("\n");

 switch (disp_info->intf_type) {
 case 128:
  intf_type = INTF_DSI;
  break;
 default:
  DPU_ERROR_ENC(dpu_enc, "unsupported display interface type\n");
  return -EINVAL;
 }

 WARN_ON(disp_info->num_of_h_tiles < 1);

 DPU_DEBUG("dsi_info->num_of_h_tiles %d\n", disp_info->num_of_h_tiles);

 if ((disp_info->capabilities & MSM_DISPLAY_CAP_CMD_MODE) ||
     (disp_info->capabilities & MSM_DISPLAY_CAP_VID_MODE))
  dpu_enc->idle_pc_supported =
    dpu_kms->catalog->caps->has_idle_pc;

 mutex_lock(&dpu_enc->enc_lock);
 for (i = 0; i < disp_info->num_of_h_tiles && !ret; i++) {





  u32 controller_id = disp_info->h_tile_instance[i];

  if (disp_info->num_of_h_tiles > 1) {
   if (i == 0)
    phys_params.split_role = ENC_ROLE_MASTER;
   else
    phys_params.split_role = ENC_ROLE_SLAVE;
  } else {
   phys_params.split_role = ENC_ROLE_SOLO;
  }

  DPU_DEBUG("h_tile_instance %d = %d, split_role %d\n",
    i, controller_id, phys_params.split_role);

  phys_params.intf_idx = dpu_encoder_get_intf(dpu_kms->catalog,
             intf_type,
             controller_id);
  if (phys_params.intf_idx == INTF_MAX) {
   DPU_ERROR_ENC(dpu_enc, "could not get intf: type %d, id %d\n",
        intf_type, controller_id);
   ret = -EINVAL;
  }

  if (!ret) {
   ret = dpu_encoder_virt_add_phys_encs(disp_info->capabilities,
             dpu_enc,
             &phys_params);
   if (ret)
    DPU_ERROR_ENC(dpu_enc, "failed to add phys encs\n");
  }
 }

 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

  if (phys) {
   atomic_set(&phys->vsync_cnt, 0);
   atomic_set(&phys->underrun_cnt, 0);
  }
 }
 mutex_unlock(&dpu_enc->enc_lock);

 return ret;
}

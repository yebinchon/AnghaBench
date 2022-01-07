
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int pending_kickoff_cnt; TYPE_1__* hw_pp; int parent; } ;
struct TYPE_2__ {scalar_t__ idx; } ;


 int DPU_DEBUG_CMDENC (struct dpu_encoder_phys_cmd*,char*,scalar_t__,int ) ;
 int DPU_ERROR (char*) ;
 int DRMID (int ) ;
 int DRM_DEBUG_KMS (char*,int ,scalar_t__,int ) ;
 int DRM_ERROR (char*,int ,int,scalar_t__) ;
 scalar_t__ PINGPONG_0 ;
 int _dpu_encoder_phys_cmd_wait_for_idle (struct dpu_encoder_phys*) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_prepare_for_kickoff(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
   to_dpu_encoder_phys_cmd(phys_enc);
 int ret;

 if (!phys_enc || !phys_enc->hw_pp) {
  DPU_ERROR("invalid encoder\n");
  return;
 }
 DRM_DEBUG_KMS("id:%u pp:%d pending_cnt:%d\n", DRMID(phys_enc->parent),
        phys_enc->hw_pp->idx - PINGPONG_0,
        atomic_read(&phys_enc->pending_kickoff_cnt));





 ret = _dpu_encoder_phys_cmd_wait_for_idle(phys_enc);
 if (ret) {

  atomic_set(&phys_enc->pending_kickoff_cnt, 0);
  DRM_ERROR("failed wait_for_idle: id:%u ret:%d pp:%d\n",
     DRMID(phys_enc->parent), ret,
     phys_enc->hw_pp->idx - PINGPONG_0);
 }

 DPU_DEBUG_CMDENC(cmd_enc, "pp:%d pending_cnt %d\n",
   phys_enc->hw_pp->idx - PINGPONG_0,
   atomic_read(&phys_enc->pending_kickoff_cnt));
}

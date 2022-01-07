
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct dpu_encoder_phys_cmd {int pp_timeout_report_cnt; } ;
struct dpu_encoder_phys {int parent; TYPE_3__* parent_ops; int enable_state; int pending_kickoff_cnt; TYPE_2__* hw_ctl; TYPE_1__* hw_pp; } ;
struct TYPE_6__ {int (* handle_frame_done ) (int ,struct dpu_encoder_phys*,int ) ;} ;
struct TYPE_5__ {scalar_t__ idx; } ;
struct TYPE_4__ {scalar_t__ idx; } ;


 scalar_t__ CTL_0 ;
 int DPU_ENCODER_FRAME_EVENT_ERROR ;
 int DPU_ENCODER_FRAME_EVENT_PANEL_DEAD ;
 int DPU_ENC_ERR_NEEDS_HW_RESET ;
 int DRMID (int ) ;
 int DRM_ERROR (char*,int ,scalar_t__,scalar_t__,int,int ) ;
 int EINVAL ;
 int ETIMEDOUT ;
 int INTR_IDX_RDPTR ;
 scalar_t__ PINGPONG_0 ;
 int PP_TIMEOUT_MAX_TRIALS ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_read (int *) ;
 int dpu_encoder_helper_unregister_irq (struct dpu_encoder_phys*,int ) ;
 int stub1 (int ,struct dpu_encoder_phys*,int ) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;
 int trace_dpu_enc_phys_cmd_pdone_timeout (int ,scalar_t__,int,int ,int ) ;

__attribute__((used)) static int _dpu_encoder_phys_cmd_handle_ppdone_timeout(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
   to_dpu_encoder_phys_cmd(phys_enc);
 u32 frame_event = DPU_ENCODER_FRAME_EVENT_ERROR;
 bool do_log = 0;

 if (!phys_enc || !phys_enc->hw_pp || !phys_enc->hw_ctl)
  return -EINVAL;

 cmd_enc->pp_timeout_report_cnt++;
 if (cmd_enc->pp_timeout_report_cnt == PP_TIMEOUT_MAX_TRIALS) {
  frame_event |= DPU_ENCODER_FRAME_EVENT_PANEL_DEAD;
  do_log = 1;
 } else if (cmd_enc->pp_timeout_report_cnt == 1) {
  do_log = 1;
 }

 trace_dpu_enc_phys_cmd_pdone_timeout(DRMID(phys_enc->parent),
       phys_enc->hw_pp->idx - PINGPONG_0,
       cmd_enc->pp_timeout_report_cnt,
       atomic_read(&phys_enc->pending_kickoff_cnt),
       frame_event);


 if (do_log) {
  DRM_ERROR("id:%d pp:%d kickoff timeout %d cnt %d koff_cnt %d\n",
     DRMID(phys_enc->parent),
     phys_enc->hw_pp->idx - PINGPONG_0,
     phys_enc->hw_ctl->idx - CTL_0,
     cmd_enc->pp_timeout_report_cnt,
     atomic_read(&phys_enc->pending_kickoff_cnt));

  dpu_encoder_helper_unregister_irq(phys_enc, INTR_IDX_RDPTR);
 }

 atomic_add_unless(&phys_enc->pending_kickoff_cnt, -1, 0);


 phys_enc->enable_state = DPU_ENC_ERR_NEEDS_HW_RESET;

 if (phys_enc->parent_ops->handle_frame_done)
  phys_enc->parent_ops->handle_frame_done(
    phys_enc->parent, phys_enc, frame_event);

 return -ETIMEDOUT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int pending_kickoff_wq; int pending_ctlstart_cnt; int hw_ctl; } ;


 int DPU_ATRACE_BEGIN (char*) ;
 int DPU_ATRACE_END (char*) ;
 int atomic_add_unless (int *,int,int ) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_ctl_start_irq(void *arg, int irq_idx)
{
 struct dpu_encoder_phys *phys_enc = arg;
 struct dpu_encoder_phys_cmd *cmd_enc;

 if (!phys_enc || !phys_enc->hw_ctl)
  return;

 DPU_ATRACE_BEGIN("ctl_start_irq");
 cmd_enc = to_dpu_encoder_phys_cmd(phys_enc);

 atomic_add_unless(&phys_enc->pending_ctlstart_cnt, -1, 0);


 wake_up_all(&phys_enc->pending_kickoff_wq);
 DPU_ATRACE_END("ctl_start_irq");
}

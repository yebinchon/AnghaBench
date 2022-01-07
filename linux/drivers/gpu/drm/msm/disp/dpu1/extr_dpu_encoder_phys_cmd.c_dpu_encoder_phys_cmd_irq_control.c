
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int vblank_refcount; TYPE_1__* hw_pp; int parent; } ;
struct TYPE_2__ {scalar_t__ idx; } ;


 int DRMID (int ) ;
 int INTR_IDX_CTL_START ;
 int INTR_IDX_PINGPONG ;
 int INTR_IDX_UNDERRUN ;
 scalar_t__ PINGPONG_0 ;
 int atomic_read (int *) ;
 int dpu_encoder_helper_register_irq (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_helper_unregister_irq (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_phys_cmd_control_vblank_irq (struct dpu_encoder_phys*,int) ;
 scalar_t__ dpu_encoder_phys_cmd_is_master (struct dpu_encoder_phys*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;
 int trace_dpu_enc_phys_cmd_irq_ctrl (int ,scalar_t__,int,int ) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_irq_control(struct dpu_encoder_phys *phys_enc,
  bool enable)
{
 struct dpu_encoder_phys_cmd *cmd_enc;

 if (!phys_enc)
  return;

 cmd_enc = to_dpu_encoder_phys_cmd(phys_enc);

 trace_dpu_enc_phys_cmd_irq_ctrl(DRMID(phys_enc->parent),
   phys_enc->hw_pp->idx - PINGPONG_0,
   enable, atomic_read(&phys_enc->vblank_refcount));

 if (enable) {
  dpu_encoder_helper_register_irq(phys_enc, INTR_IDX_PINGPONG);
  dpu_encoder_helper_register_irq(phys_enc, INTR_IDX_UNDERRUN);
  dpu_encoder_phys_cmd_control_vblank_irq(phys_enc, 1);

  if (dpu_encoder_phys_cmd_is_master(phys_enc))
   dpu_encoder_helper_register_irq(phys_enc,
     INTR_IDX_CTL_START);
 } else {
  if (dpu_encoder_phys_cmd_is_master(phys_enc))
   dpu_encoder_helper_unregister_irq(phys_enc,
     INTR_IDX_CTL_START);

  dpu_encoder_helper_unregister_irq(phys_enc, INTR_IDX_UNDERRUN);
  dpu_encoder_phys_cmd_control_vblank_irq(phys_enc, 0);
  dpu_encoder_helper_unregister_irq(phys_enc, INTR_IDX_PINGPONG);
 }
}

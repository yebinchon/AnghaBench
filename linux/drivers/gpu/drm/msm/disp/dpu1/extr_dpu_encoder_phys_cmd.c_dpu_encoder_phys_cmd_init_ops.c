
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys_ops {int get_line_count; int handle_post_kickoff; int prepare_idle_pc; int restore; int irq_control; int needs_single_flush; int trigger_start; int wait_for_vblank; int wait_for_tx_complete; int prepare_for_kickoff; int wait_for_commit_done; int control_vblank_irq; int get_hw_resources; int destroy; int disable; int enable; int mode_fixup; int mode_set; int is_master; } ;


 int dpu_encoder_phys_cmd_control_vblank_irq ;
 int dpu_encoder_phys_cmd_destroy ;
 int dpu_encoder_phys_cmd_disable ;
 int dpu_encoder_phys_cmd_enable ;
 int dpu_encoder_phys_cmd_enable_helper ;
 int dpu_encoder_phys_cmd_get_hw_resources ;
 int dpu_encoder_phys_cmd_get_line_count ;
 int dpu_encoder_phys_cmd_handle_post_kickoff ;
 int dpu_encoder_phys_cmd_irq_control ;
 int dpu_encoder_phys_cmd_is_master ;
 int dpu_encoder_phys_cmd_mode_fixup ;
 int dpu_encoder_phys_cmd_mode_set ;
 int dpu_encoder_phys_cmd_needs_single_flush ;
 int dpu_encoder_phys_cmd_prepare_for_kickoff ;
 int dpu_encoder_phys_cmd_prepare_idle_pc ;
 int dpu_encoder_phys_cmd_trigger_start ;
 int dpu_encoder_phys_cmd_wait_for_commit_done ;
 int dpu_encoder_phys_cmd_wait_for_tx_complete ;
 int dpu_encoder_phys_cmd_wait_for_vblank ;

__attribute__((used)) static void dpu_encoder_phys_cmd_init_ops(
  struct dpu_encoder_phys_ops *ops)
{
 ops->is_master = dpu_encoder_phys_cmd_is_master;
 ops->mode_set = dpu_encoder_phys_cmd_mode_set;
 ops->mode_fixup = dpu_encoder_phys_cmd_mode_fixup;
 ops->enable = dpu_encoder_phys_cmd_enable;
 ops->disable = dpu_encoder_phys_cmd_disable;
 ops->destroy = dpu_encoder_phys_cmd_destroy;
 ops->get_hw_resources = dpu_encoder_phys_cmd_get_hw_resources;
 ops->control_vblank_irq = dpu_encoder_phys_cmd_control_vblank_irq;
 ops->wait_for_commit_done = dpu_encoder_phys_cmd_wait_for_commit_done;
 ops->prepare_for_kickoff = dpu_encoder_phys_cmd_prepare_for_kickoff;
 ops->wait_for_tx_complete = dpu_encoder_phys_cmd_wait_for_tx_complete;
 ops->wait_for_vblank = dpu_encoder_phys_cmd_wait_for_vblank;
 ops->trigger_start = dpu_encoder_phys_cmd_trigger_start;
 ops->needs_single_flush = dpu_encoder_phys_cmd_needs_single_flush;
 ops->irq_control = dpu_encoder_phys_cmd_irq_control;
 ops->restore = dpu_encoder_phys_cmd_enable_helper;
 ops->prepare_idle_pc = dpu_encoder_phys_cmd_prepare_idle_pc;
 ops->handle_post_kickoff = dpu_encoder_phys_cmd_handle_post_kickoff;
 ops->get_line_count = dpu_encoder_phys_cmd_get_line_count;
}

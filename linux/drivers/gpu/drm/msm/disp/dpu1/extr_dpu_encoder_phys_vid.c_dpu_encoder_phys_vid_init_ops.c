
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys_ops {int get_line_count; int needs_single_flush; int handle_post_kickoff; int prepare_for_kickoff; int irq_control; void* wait_for_tx_complete; void* wait_for_vblank; int wait_for_commit_done; int control_vblank_irq; int get_hw_resources; int destroy; int disable; int enable; int mode_fixup; int mode_set; int is_master; } ;


 int dpu_encoder_phys_vid_control_vblank_irq ;
 int dpu_encoder_phys_vid_destroy ;
 int dpu_encoder_phys_vid_disable ;
 int dpu_encoder_phys_vid_enable ;
 int dpu_encoder_phys_vid_get_hw_resources ;
 int dpu_encoder_phys_vid_get_line_count ;
 int dpu_encoder_phys_vid_handle_post_kickoff ;
 int dpu_encoder_phys_vid_irq_control ;
 int dpu_encoder_phys_vid_is_master ;
 int dpu_encoder_phys_vid_mode_fixup ;
 int dpu_encoder_phys_vid_mode_set ;
 int dpu_encoder_phys_vid_needs_single_flush ;
 int dpu_encoder_phys_vid_prepare_for_kickoff ;
 int dpu_encoder_phys_vid_wait_for_commit_done ;
 void* dpu_encoder_phys_vid_wait_for_vblank ;

__attribute__((used)) static void dpu_encoder_phys_vid_init_ops(struct dpu_encoder_phys_ops *ops)
{
 ops->is_master = dpu_encoder_phys_vid_is_master;
 ops->mode_set = dpu_encoder_phys_vid_mode_set;
 ops->mode_fixup = dpu_encoder_phys_vid_mode_fixup;
 ops->enable = dpu_encoder_phys_vid_enable;
 ops->disable = dpu_encoder_phys_vid_disable;
 ops->destroy = dpu_encoder_phys_vid_destroy;
 ops->get_hw_resources = dpu_encoder_phys_vid_get_hw_resources;
 ops->control_vblank_irq = dpu_encoder_phys_vid_control_vblank_irq;
 ops->wait_for_commit_done = dpu_encoder_phys_vid_wait_for_commit_done;
 ops->wait_for_vblank = dpu_encoder_phys_vid_wait_for_vblank;
 ops->wait_for_tx_complete = dpu_encoder_phys_vid_wait_for_vblank;
 ops->irq_control = dpu_encoder_phys_vid_irq_control;
 ops->prepare_for_kickoff = dpu_encoder_phys_vid_prepare_for_kickoff;
 ops->handle_post_kickoff = dpu_encoder_phys_vid_handle_post_kickoff;
 ops->needs_single_flush = dpu_encoder_phys_vid_needs_single_flush;
 ops->get_line_count = dpu_encoder_phys_vid_get_line_count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_ctl_ops {int get_bitmask_intf; int get_bitmask_mixer; int get_bitmask_sspp; int setup_blendstage; int clear_all_blendstages; int wait_reset_status; int reset; int setup_intf_cfg; int trigger_pending; int trigger_start; int get_flush_register; int trigger_flush; int get_pending_flush; int update_pending_flush; int clear_pending_flush; } ;


 int dpu_hw_ctl_clear_all_blendstages ;
 int dpu_hw_ctl_clear_pending_flush ;
 int dpu_hw_ctl_get_bitmask_intf ;
 int dpu_hw_ctl_get_bitmask_mixer ;
 int dpu_hw_ctl_get_bitmask_sspp ;
 int dpu_hw_ctl_get_flush_register ;
 int dpu_hw_ctl_get_pending_flush ;
 int dpu_hw_ctl_intf_cfg ;
 int dpu_hw_ctl_reset_control ;
 int dpu_hw_ctl_setup_blendstage ;
 int dpu_hw_ctl_trigger_flush ;
 int dpu_hw_ctl_trigger_pending ;
 int dpu_hw_ctl_trigger_start ;
 int dpu_hw_ctl_update_pending_flush ;
 int dpu_hw_ctl_wait_reset_status ;

__attribute__((used)) static void _setup_ctl_ops(struct dpu_hw_ctl_ops *ops,
  unsigned long cap)
{
 ops->clear_pending_flush = dpu_hw_ctl_clear_pending_flush;
 ops->update_pending_flush = dpu_hw_ctl_update_pending_flush;
 ops->get_pending_flush = dpu_hw_ctl_get_pending_flush;
 ops->trigger_flush = dpu_hw_ctl_trigger_flush;
 ops->get_flush_register = dpu_hw_ctl_get_flush_register;
 ops->trigger_start = dpu_hw_ctl_trigger_start;
 ops->trigger_pending = dpu_hw_ctl_trigger_pending;
 ops->setup_intf_cfg = dpu_hw_ctl_intf_cfg;
 ops->reset = dpu_hw_ctl_reset_control;
 ops->wait_reset_status = dpu_hw_ctl_wait_reset_status;
 ops->clear_all_blendstages = dpu_hw_ctl_clear_all_blendstages;
 ops->setup_blendstage = dpu_hw_ctl_setup_blendstage;
 ops->get_bitmask_sspp = dpu_hw_ctl_get_bitmask_sspp;
 ops->get_bitmask_mixer = dpu_hw_ctl_get_bitmask_mixer;
 ops->get_bitmask_intf = dpu_hw_ctl_get_bitmask_intf;
}

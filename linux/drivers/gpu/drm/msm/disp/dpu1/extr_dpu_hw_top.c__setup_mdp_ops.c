
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_mdp_ops {int intf_audio_select; int reset_ubwc; int get_safe_status; int setup_vsync_source; int get_danger_status; int setup_clk_force_ctrl; int setup_split_pipe; } ;


 int dpu_hw_get_danger_status ;
 int dpu_hw_get_safe_status ;
 int dpu_hw_intf_audio_select ;
 int dpu_hw_reset_ubwc ;
 int dpu_hw_setup_clk_force_ctrl ;
 int dpu_hw_setup_split_pipe ;
 int dpu_hw_setup_vsync_source ;

__attribute__((used)) static void _setup_mdp_ops(struct dpu_hw_mdp_ops *ops,
  unsigned long cap)
{
 ops->setup_split_pipe = dpu_hw_setup_split_pipe;
 ops->setup_clk_force_ctrl = dpu_hw_setup_clk_force_ctrl;
 ops->get_danger_status = dpu_hw_get_danger_status;
 ops->setup_vsync_source = dpu_hw_setup_vsync_source;
 ops->get_safe_status = dpu_hw_get_safe_status;
 ops->reset_ubwc = dpu_hw_reset_ubwc;
 ops->intf_audio_select = dpu_hw_intf_audio_select;
}

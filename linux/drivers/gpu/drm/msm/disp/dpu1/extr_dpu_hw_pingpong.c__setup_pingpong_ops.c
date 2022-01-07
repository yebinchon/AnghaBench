
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_pingpong_cfg {int dummy; } ;
struct dpu_hw_pingpong_ops {int get_line_count; int poll_timeout_wr_ptr; int get_vsync_info; int connect_external_te; int enable_tearcheck; int setup_tearcheck; } ;


 int dpu_hw_pp_connect_external_te ;
 int dpu_hw_pp_enable_te ;
 int dpu_hw_pp_get_line_count ;
 int dpu_hw_pp_get_vsync_info ;
 int dpu_hw_pp_poll_timeout_wr_ptr ;
 int dpu_hw_pp_setup_te_config ;

__attribute__((used)) static void _setup_pingpong_ops(struct dpu_hw_pingpong_ops *ops,
 const struct dpu_pingpong_cfg *hw_cap)
{
 ops->setup_tearcheck = dpu_hw_pp_setup_te_config;
 ops->enable_tearcheck = dpu_hw_pp_enable_te;
 ops->connect_external_te = dpu_hw_pp_connect_external_te;
 ops->get_vsync_info = dpu_hw_pp_get_vsync_info;
 ops->poll_timeout_wr_ptr = dpu_hw_pp_poll_timeout_wr_ptr;
 ops->get_line_count = dpu_hw_pp_get_line_count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_intf_ops {int get_line_count; int enable_timing; int get_status; int setup_prg_fetch; int setup_timing_gen; } ;


 int dpu_hw_intf_enable_timing_engine ;
 int dpu_hw_intf_get_line_count ;
 int dpu_hw_intf_get_status ;
 int dpu_hw_intf_setup_prg_fetch ;
 int dpu_hw_intf_setup_timing_engine ;

__attribute__((used)) static void _setup_intf_ops(struct dpu_hw_intf_ops *ops,
  unsigned long cap)
{
 ops->setup_timing_gen = dpu_hw_intf_setup_timing_engine;
 ops->setup_prg_fetch = dpu_hw_intf_setup_prg_fetch;
 ops->get_status = dpu_hw_intf_get_status;
 ops->enable_timing = dpu_hw_intf_enable_timing_engine;
 ops->get_line_count = dpu_hw_intf_get_line_count;
}

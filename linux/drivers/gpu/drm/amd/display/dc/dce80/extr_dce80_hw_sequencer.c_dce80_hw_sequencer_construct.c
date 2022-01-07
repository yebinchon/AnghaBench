
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int optimize_bandwidth; int prepare_bandwidth; int pipe_control_lock; int enable_display_power_gating; } ;
struct dc {TYPE_1__ hwss; } ;


 int dce100_enable_display_power_gating ;
 int dce100_optimize_bandwidth ;
 int dce100_prepare_bandwidth ;
 int dce110_hw_sequencer_construct (struct dc*) ;
 int dce_pipe_control_lock ;

void dce80_hw_sequencer_construct(struct dc *dc)
{
 dce110_hw_sequencer_construct(dc);

 dc->hwss.enable_display_power_gating = dce100_enable_display_power_gating;
 dc->hwss.pipe_control_lock = dce_pipe_control_lock;
 dc->hwss.prepare_bandwidth = dce100_prepare_bandwidth;
 dc->hwss.optimize_bandwidth = dce100_optimize_bandwidth;
}

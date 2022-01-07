
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable_display_power_gating; } ;
struct dc {TYPE_1__ hwss; } ;


 int dce110_hw_sequencer_construct (struct dc*) ;
 int dce112_enable_display_power_gating ;

void dce112_hw_sequencer_construct(struct dc *dc)
{



 dce110_hw_sequencer_construct(dc);
 dc->hwss.enable_display_power_gating = dce112_enable_display_power_gating;
}

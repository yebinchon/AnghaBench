
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc {int dummy; } ;


 int disable_vga_and_power_gate_all_controllers (struct dc*) ;
 int power_down_all_hw_blocks (struct dc*) ;

void dce110_power_down(struct dc *dc)
{
 power_down_all_hw_blocks(dc);
 disable_vga_and_power_gate_all_controllers(dc);
}

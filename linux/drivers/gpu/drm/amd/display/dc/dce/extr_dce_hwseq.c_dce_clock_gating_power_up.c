
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;


 int dce_disable_sram_shut_down (struct dce_hwseq*) ;
 int dce_underlay_clock_enable (struct dce_hwseq*) ;
 int disable_sw_manual_control_light_sleep () ;
 int enable_hw_base_light_sleep () ;

void dce_clock_gating_power_up(struct dce_hwseq *hws,
  bool enable)
{
 if (enable) {
  enable_hw_base_light_sleep();
  disable_sw_manual_control_light_sleep();
 } else {
  dce_disable_sram_shut_down(hws);
  dce_underlay_clock_enable(hws);
 }
}

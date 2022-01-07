
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dsi {int escape_clk_div; } ;



int intel_dsi_tlpx_ns(const struct intel_dsi *intel_dsi)
{
 switch (intel_dsi->escape_clk_div) {
 default:
 case 0:
  return 50;
 case 1:
  return 100;
 case 2:
  return 200;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_bw_output {int dispclk_khz; int sclk_khz; } ;
struct bw_calcs_vbios {int high_sclk; int high_voltage_max_dispclk; } ;


 int bw_fixed_to_int (int ) ;

__attribute__((used)) static bool is_display_configuration_supported(
 const struct bw_calcs_vbios *vbios,
 const struct dce_bw_output *calcs_output)
{
 uint32_t int_max_clk;

 int_max_clk = bw_fixed_to_int(vbios->high_voltage_max_dispclk);
 int_max_clk *= 1000;
 if (calcs_output->dispclk_khz > int_max_clk)
  return 0;

 int_max_clk = bw_fixed_to_int(vbios->high_sclk);
 int_max_clk *= 1000;
 if (calcs_output->sclk_khz > int_max_clk)
  return 0;

 return 1;
}

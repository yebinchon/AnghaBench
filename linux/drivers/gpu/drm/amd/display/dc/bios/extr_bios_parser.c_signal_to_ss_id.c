
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum as_signal_type { ____Placeholder_as_signal_type } as_signal_type ;


 int ASIC_INTERNAL_GPUPLL_SS ;
 int ASIC_INTERNAL_SS_ON_DP ;
 int ASIC_INTERNAL_SS_ON_HDMI ;
 int ASIC_INTERNAL_SS_ON_LVDS ;
 int ASIC_INTERNAL_SS_ON_TMDS ;






__attribute__((used)) static uint32_t signal_to_ss_id(enum as_signal_type signal)
{
 uint32_t clk_id_ss = 0;

 switch (signal) {
 case 131:
  clk_id_ss = ASIC_INTERNAL_SS_ON_TMDS;
  break;
 case 129:
  clk_id_ss = ASIC_INTERNAL_SS_ON_HDMI;
  break;
 case 128:
  clk_id_ss = ASIC_INTERNAL_SS_ON_LVDS;
  break;
 case 132:
  clk_id_ss = ASIC_INTERNAL_SS_ON_DP;
  break;
 case 130:
  clk_id_ss = ASIC_INTERNAL_GPUPLL_SS;
  break;
 default:
  break;
 }
 return clk_id_ss;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dce110_link_encoder {int dummy; } ;


 int disable_prbs_mode (struct dce110_link_encoder*) ;
 int disable_prbs_symbols (struct dce110_link_encoder*,int) ;
 int enable_phy_bypass_mode (struct dce110_link_encoder*,int) ;
 int program_pattern_symbols (struct dce110_link_encoder*,int*) ;

__attribute__((used)) static void set_dp_phy_pattern_d102(
 struct dce110_link_encoder *enc110)
{

 enable_phy_bypass_mode(enc110, 0);






 disable_prbs_symbols(enc110, 1);


 disable_prbs_mode(enc110);


 {
  uint16_t pattern_symbols[8] = {
   0x2AA, 0x2AA, 0x2AA, 0x2AA,
   0x2AA, 0x2AA, 0x2AA, 0x2AA
  };

  program_pattern_symbols(enc110, pattern_symbols);
 }



 enable_phy_bypass_mode(enc110, 1);
}

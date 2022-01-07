
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct dce110_link_encoder {int dummy; } ;


 int disable_prbs_symbols (struct dce110_link_encoder*,int) ;
 int enable_phy_bypass_mode (struct dce110_link_encoder*,int) ;
 int program_pattern_symbols (struct dce110_link_encoder*,int*) ;

__attribute__((used)) static void set_dp_phy_pattern_80bit_custom(
 struct dce110_link_encoder *enc110,
 const uint8_t *pattern)
{

 enable_phy_bypass_mode(enc110, 0);



 disable_prbs_symbols(enc110, 1);




 enable_phy_bypass_mode(enc110, 1);


 {
  uint16_t pattern_symbols[8];

  pattern_symbols[0] =
   ((pattern[1] & 0x03) << 8) | pattern[0];
  pattern_symbols[1] =
   ((pattern[2] & 0x0f) << 6) | ((pattern[1] >> 2) & 0x3f);
  pattern_symbols[2] =
   ((pattern[3] & 0x3f) << 4) | ((pattern[2] >> 4) & 0x0f);
  pattern_symbols[3] =
   (pattern[4] << 2) | ((pattern[3] >> 6) & 0x03);
  pattern_symbols[4] =
   ((pattern[6] & 0x03) << 8) | pattern[5];
  pattern_symbols[5] =
   ((pattern[7] & 0x0f) << 6) | ((pattern[6] >> 2) & 0x3f);
  pattern_symbols[6] =
   ((pattern[8] & 0x3f) << 4) | ((pattern[7] >> 4) & 0x0f);
  pattern_symbols[7] =
   (pattern[9] << 2) | ((pattern[8] >> 6) & 0x03);

  program_pattern_symbols(enc110, pattern_symbols);
 }



 enable_phy_bypass_mode(enc110, 1);
}

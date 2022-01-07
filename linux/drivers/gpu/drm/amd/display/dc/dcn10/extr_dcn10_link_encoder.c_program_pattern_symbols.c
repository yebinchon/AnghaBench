
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dcn10_link_encoder {int dummy; } ;


 int DPHY_SYM1 ;
 int DPHY_SYM2 ;
 int DPHY_SYM3 ;
 int DPHY_SYM4 ;
 int DPHY_SYM5 ;
 int DPHY_SYM6 ;
 int DPHY_SYM7 ;
 int DPHY_SYM8 ;
 int DP_DPHY_SYM0 ;
 int DP_DPHY_SYM1 ;
 int DP_DPHY_SYM2 ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_SET_3 (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void program_pattern_symbols(
 struct dcn10_link_encoder *enc10,
 uint16_t pattern_symbols[8])
{



 REG_SET_3(DP_DPHY_SYM0, 0,
   DPHY_SYM1, pattern_symbols[0],
   DPHY_SYM2, pattern_symbols[1],
   DPHY_SYM3, pattern_symbols[2]);




 REG_SET_3(DP_DPHY_SYM1, 0,
   DPHY_SYM4, pattern_symbols[3],
   DPHY_SYM5, pattern_symbols[4],
   DPHY_SYM6, pattern_symbols[5]);




 REG_SET_2(DP_DPHY_SYM2, 0,
   DPHY_SYM7, pattern_symbols[6],
   DPHY_SYM8, pattern_symbols[7]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;


 int ATOM_TRANSMITTER_CONFIG_V5_P0PLL ;
 int ATOM_TRANSMITTER_CONFIG_V5_P1PLL ;
 int ATOM_TRANSMITTER_CONFIG_V5_P2PLL ;
 int ATOM_TRANSMITTER_CONFIG_V5_REFCLK_SRC_EXT ;





__attribute__((used)) static uint8_t clock_source_id_to_atom_phy_clk_src_id(
  enum clock_source_id id)
{
 uint8_t atom_phy_clk_src_id = 0;

 switch (id) {
 case 130:
  atom_phy_clk_src_id = ATOM_TRANSMITTER_CONFIG_V5_P0PLL;
  break;
 case 129:
  atom_phy_clk_src_id = ATOM_TRANSMITTER_CONFIG_V5_P1PLL;
  break;
 case 128:
  atom_phy_clk_src_id = ATOM_TRANSMITTER_CONFIG_V5_P2PLL;
  break;
 case 131:
  atom_phy_clk_src_id = ATOM_TRANSMITTER_CONFIG_V5_REFCLK_SRC_EXT;
  break;
 default:
  atom_phy_clk_src_id = ATOM_TRANSMITTER_CONFIG_V5_P1PLL;
  break;
 }

 return atom_phy_clk_src_id >> 2;
}

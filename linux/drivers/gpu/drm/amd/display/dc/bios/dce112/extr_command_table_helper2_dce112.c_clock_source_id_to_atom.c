
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;


 int ATOM_COMBOPHY_PLL0 ;
 int ATOM_COMBOPHY_PLL1 ;
 int ATOM_COMBOPHY_PLL2 ;
 int ATOM_COMBOPHY_PLL3 ;
 int ATOM_COMBOPHY_PLL4 ;
 int ATOM_COMBOPHY_PLL5 ;
 int ATOM_DP_DTO ;
 int ATOM_GCK_DFS ;
 int ATOM_PPLL0 ;
 int ATOM_PPLL_INVALID ;
__attribute__((used)) static bool clock_source_id_to_atom(
 enum clock_source_id id,
 uint32_t *atom_pll_id)
{
 bool result = 1;

 if (atom_pll_id != ((void*)0))
  switch (id) {
  case 137:
   *atom_pll_id = ATOM_COMBOPHY_PLL0;
   break;
  case 136:
   *atom_pll_id = ATOM_COMBOPHY_PLL1;
   break;
  case 135:
   *atom_pll_id = ATOM_COMBOPHY_PLL2;
   break;
  case 134:
   *atom_pll_id = ATOM_COMBOPHY_PLL3;
   break;
  case 133:
   *atom_pll_id = ATOM_COMBOPHY_PLL4;
   break;
  case 132:
   *atom_pll_id = ATOM_COMBOPHY_PLL5;
   break;
  case 138:
   *atom_pll_id = ATOM_PPLL0;
   break;
  case 131:
   *atom_pll_id = ATOM_GCK_DFS;
   break;
  case 128:
   *atom_pll_id = ATOM_DP_DTO;
   break;
  case 130:
   *atom_pll_id = ATOM_DP_DTO;
   break;
  case 129:

   *atom_pll_id = ATOM_PPLL_INVALID;
   result = 0;
   break;
  default:
   result = 0;
   break;
  }

 return result;
}

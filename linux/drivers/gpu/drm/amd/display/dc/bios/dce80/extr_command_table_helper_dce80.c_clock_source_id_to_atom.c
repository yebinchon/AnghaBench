
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;


 int ATOM_EXT_PLL1 ;
 int ATOM_PPLL0 ;
 int ATOM_PPLL1 ;
 int ATOM_PPLL2 ;
 int ATOM_PPLL_INVALID ;
 int BREAK_TO_DEBUGGER () ;
__attribute__((used)) static bool clock_source_id_to_atom(
 enum clock_source_id id,
 uint32_t *atom_pll_id)
{
 bool result = 1;

 if (atom_pll_id != ((void*)0))
  switch (id) {
  case 132:
   *atom_pll_id = ATOM_PPLL0;
   break;
  case 131:
   *atom_pll_id = ATOM_PPLL1;
   break;
  case 130:
   *atom_pll_id = ATOM_PPLL2;
   break;
  case 133:
   *atom_pll_id = ATOM_PPLL_INVALID;
   break;
  case 135:
   *atom_pll_id = ATOM_EXT_PLL1;
   break;
  case 128:



   *atom_pll_id = ATOM_PPLL_INVALID;
   break;
  case 134:

   *atom_pll_id = ATOM_PPLL_INVALID;
   break;
  case 129:
   BREAK_TO_DEBUGGER();
   *atom_pll_id = ATOM_PPLL_INVALID;
   result = 0;
   break;
  default:
   result = 0;
   break;
  }

 return result;
}

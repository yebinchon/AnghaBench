
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum bp_dce_clock_type { ____Placeholder_bp_dce_clock_type } bp_dce_clock_type ;


 int ASSERT_CRITICAL (int) ;


 int DCE_CLOCK_TYPE_DISPCLK ;
 int DCE_CLOCK_TYPE_DPREFCLK ;

__attribute__((used)) static bool dc_clock_type_to_atom(
  enum bp_dce_clock_type id,
  uint32_t *atom_clock_type)
{
 bool retCode = 1;

 if (atom_clock_type != ((void*)0)) {
  switch (id) {
  case 129:
   *atom_clock_type = DCE_CLOCK_TYPE_DISPCLK;
   break;

  case 128:
   *atom_clock_type = DCE_CLOCK_TYPE_DPREFCLK;
   break;

  default:
   ASSERT_CRITICAL(0);
   break;
  }
 }

 return retCode;
}

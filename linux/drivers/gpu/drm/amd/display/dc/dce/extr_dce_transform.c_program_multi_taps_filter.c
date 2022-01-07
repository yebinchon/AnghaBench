
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct dce_transform {int dummy; } ;
typedef enum ram_filter_type { ____Placeholder_ram_filter_type } ram_filter_type ;


 int DCFE_MEM_PWR_CTRL ;
 int DCFE_MEM_PWR_STATUS ;
 scalar_t__ REG (int ) ;
 int REG_READ (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int) ;
 int REG_SET_4 (int ,int ,int ,int,int ,int ,int ,int,int ,int ) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 int REG_WRITE (int ,int ) ;
 int SCL_COEFF_MEM_PWR_DIS ;
 int SCL_COEFF_MEM_PWR_STATE ;
 int SCL_COEF_RAM_SELECT ;
 int SCL_COEF_RAM_TAP_DATA ;
 int SCL_C_RAM_EVEN_TAP_COEF ;
 int SCL_C_RAM_EVEN_TAP_COEF_EN ;
 int SCL_C_RAM_FILTER_TYPE ;
 int SCL_C_RAM_ODD_TAP_COEF ;
 int SCL_C_RAM_ODD_TAP_COEF_EN ;
 int SCL_C_RAM_PHASE ;
 int SCL_C_RAM_TAP_PAIR_IDX ;
 int SCL_PHASES ;

__attribute__((used)) static void program_multi_taps_filter(
 struct dce_transform *xfm_dce,
 int taps,
 const uint16_t *coeffs,
 enum ram_filter_type filter_type)
{
 int phase, pair;
 int array_idx = 0;
 int taps_pairs = (taps + 1) / 2;
 int phases_to_program = SCL_PHASES / 2 + 1;

 uint32_t power_ctl = 0;

 if (!coeffs)
  return;


 if (REG(DCFE_MEM_PWR_CTRL)) {
  power_ctl = REG_READ(DCFE_MEM_PWR_CTRL);
  REG_SET(DCFE_MEM_PWR_CTRL, power_ctl, SCL_COEFF_MEM_PWR_DIS, 1);

  REG_WAIT(DCFE_MEM_PWR_STATUS, SCL_COEFF_MEM_PWR_STATE, 0, 1, 10);
 }
 for (phase = 0; phase < phases_to_program; phase++) {


  for (pair = 0; pair < taps_pairs; pair++) {
   uint16_t odd_coeff = 0;
   uint16_t even_coeff = coeffs[array_idx];

   REG_SET_3(SCL_COEF_RAM_SELECT, 0,
     SCL_C_RAM_FILTER_TYPE, filter_type,
     SCL_C_RAM_PHASE, phase,
     SCL_C_RAM_TAP_PAIR_IDX, pair);

   if (taps % 2 && pair == taps_pairs - 1)
    array_idx++;
   else {
    odd_coeff = coeffs[array_idx + 1];
    array_idx += 2;
   }

   REG_SET_4(SCL_COEF_RAM_TAP_DATA, 0,
     SCL_C_RAM_EVEN_TAP_COEF_EN, 1,
     SCL_C_RAM_EVEN_TAP_COEF, even_coeff,
     SCL_C_RAM_ODD_TAP_COEF_EN, 1,
     SCL_C_RAM_ODD_TAP_COEF, odd_coeff);
  }
 }


 if (REG(DCFE_MEM_PWR_CTRL))
  REG_WRITE(DCFE_MEM_PWR_CTRL, power_ctl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct dcn20_dwbc {int dummy; } ;
typedef enum wbscl_coef_filter_type_sel { ____Placeholder_wbscl_coef_filter_type_sel } wbscl_coef_filter_type_sel ;


 int NUM_PHASES ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int) ;
 int REG_SET_4 (int ,int ,int ,scalar_t__,int ,int,int ,scalar_t__,int ,int) ;
 int WBSCL_COEF_RAM_EVEN_TAP_COEF ;
 int WBSCL_COEF_RAM_EVEN_TAP_COEF_EN ;
 int WBSCL_COEF_RAM_FILTER_TYPE ;
 int WBSCL_COEF_RAM_ODD_TAP_COEF ;
 int WBSCL_COEF_RAM_ODD_TAP_COEF_EN ;
 int WBSCL_COEF_RAM_PHASE ;
 int WBSCL_COEF_RAM_SELECT ;
 int WBSCL_COEF_RAM_TAP_DATA ;
 int WBSCL_COEF_RAM_TAP_PAIR_IDX ;

__attribute__((used)) static void wbscl_set_scaler_filter(
 struct dcn20_dwbc *dwbc20,
 uint32_t taps,
 enum wbscl_coef_filter_type_sel filter_type,
 const uint16_t *filter)
{
 const int tap_pairs = (taps + 1) / 2;
 int phase;
 int pair;
 uint16_t odd_coef, even_coef;

 for (phase = 0; phase < (NUM_PHASES / 2 + 1); phase++) {
  for (pair = 0; pair < tap_pairs; pair++) {
   even_coef = filter[phase * taps + 2 * pair];
   if ((pair * 2 + 1) < taps)
    odd_coef = filter[phase * taps + 2 * pair + 1];
   else
    odd_coef = 0;

   REG_SET_3(WBSCL_COEF_RAM_SELECT, 0,
    WBSCL_COEF_RAM_TAP_PAIR_IDX, pair,
    WBSCL_COEF_RAM_PHASE, phase,
    WBSCL_COEF_RAM_FILTER_TYPE, filter_type);

   REG_SET_4(WBSCL_COEF_RAM_TAP_DATA, 0,

    WBSCL_COEF_RAM_EVEN_TAP_COEF, even_coef,

    WBSCL_COEF_RAM_EVEN_TAP_COEF_EN, 1,

    WBSCL_COEF_RAM_ODD_TAP_COEF, odd_coef,

    WBSCL_COEF_RAM_ODD_TAP_COEF_EN, 1);
  }
 }
}

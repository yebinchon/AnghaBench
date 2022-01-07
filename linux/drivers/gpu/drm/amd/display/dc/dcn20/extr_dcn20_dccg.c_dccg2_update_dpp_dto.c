
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn_dccg {int dummy; } ;
struct dccg {int ref_dppclk; } ;


 int ASSERT (int) ;
 int DPPCLK0_DTO_MODULO ;
 int DPPCLK0_DTO_PHASE ;
 int DPPCLK_DTO_CTRL ;
 int * DPPCLK_DTO_ENABLE ;
 int * DPPCLK_DTO_PARAM ;
 int REG_GET_2 (int ,int ,int*,int ,int*) ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn_dccg* TO_DCN_DCCG (struct dccg*) ;

void dccg2_update_dpp_dto(struct dccg *dccg,
  int dpp_inst,
  int req_dppclk,
  bool reduce_divider_only)
{
 struct dcn_dccg *dccg_dcn = TO_DCN_DCCG(dccg);

 if (dccg->ref_dppclk && req_dppclk) {
  int ref_dppclk = dccg->ref_dppclk;
  int current_phase, current_modulo;

  ASSERT(req_dppclk <= ref_dppclk);

  if (ref_dppclk > 0xff) {
   int divider = (ref_dppclk + 0xfe) / 0xff;

   ref_dppclk /= divider;
   req_dppclk = (req_dppclk + divider - 1) / divider;
   if (req_dppclk > ref_dppclk)
    req_dppclk = ref_dppclk;
  }

  REG_GET_2(DPPCLK_DTO_PARAM[dpp_inst],
    DPPCLK0_DTO_PHASE, &current_phase,
    DPPCLK0_DTO_MODULO, &current_modulo);

  if (reduce_divider_only) {

   if (req_dppclk * current_modulo >= current_phase * ref_dppclk) {
    REG_SET_2(DPPCLK_DTO_PARAM[dpp_inst], 0,
      DPPCLK0_DTO_PHASE, req_dppclk,
      DPPCLK0_DTO_MODULO, ref_dppclk);
   } else {
    REG_SET_2(DPPCLK_DTO_PARAM[dpp_inst], 0,
      DPPCLK0_DTO_PHASE, current_phase,
      DPPCLK0_DTO_MODULO, current_modulo);
   }
  } else {
   REG_SET_2(DPPCLK_DTO_PARAM[dpp_inst], 0,
     DPPCLK0_DTO_PHASE, req_dppclk,
     DPPCLK0_DTO_MODULO, ref_dppclk);
  }

  REG_UPDATE(DPPCLK_DTO_CTRL,
    DPPCLK_DTO_ENABLE[dpp_inst], 1);
 } else {
  REG_UPDATE(DPPCLK_DTO_CTRL,
    DPPCLK_DTO_ENABLE[dpp_inst], 0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;


 int CM_HDR_MULT_COEF ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

void dpp2_set_hdr_multiplier(
  struct dpp *dpp_base,
  uint32_t multiplier)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_UPDATE(CM_HDR_MULT_COEF, CM_HDR_MULT_COEF, multiplier);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;


 int CM_DGAM_CONFIG_STATUS ;
 int CM_DGAM_LUT_WRITE_EN_MASK ;
 int REG_GET (int ,int ,int*) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static bool dpp2_degamma_ram_inuse(
  struct dpp *dpp_base,
  bool *ram_a_inuse)
{
 bool ret = 0;
 uint32_t status_reg = 0;
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_GET(CM_DGAM_LUT_WRITE_EN_MASK, CM_DGAM_CONFIG_STATUS,
   &status_reg);

 if (status_reg == 3) {
  *ram_a_inuse = 1;
  ret = 1;
 } else if (status_reg == 4) {
  *ram_a_inuse = 0;
  ret = 1;
 }
 return ret;
}

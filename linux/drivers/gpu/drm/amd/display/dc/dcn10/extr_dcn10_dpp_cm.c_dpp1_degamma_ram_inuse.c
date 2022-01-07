
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;


 int CM_IGAM_DGAM_CONFIG_STATUS ;
 int CM_IGAM_LUT_RW_CONTROL ;
 int REG_GET (int ,int ,int*) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

__attribute__((used)) static bool dpp1_degamma_ram_inuse(
  struct dpp *dpp_base,
       bool *ram_a_inuse)
{
 bool ret = 0;
 uint32_t status_reg = 0;
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 REG_GET(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_DGAM_CONFIG_STATUS,
   &status_reg);

 if (status_reg == 9) {
  *ram_a_inuse = 1;
  ret = 1;
 } else if (status_reg == 10) {
  *ram_a_inuse = 0;
  ret = 1;
 }
 return ret;
}

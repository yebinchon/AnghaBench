
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;


 int CM_3DLUT_INDEX ;
 int CM_3DLUT_READ_WRITE_CONTROL ;
 int CM_3DLUT_WRITE_EN_MASK ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static void dpp20_select_3dlut_ram_mask(
  struct dpp *dpp_base,
  uint32_t ram_selection_mask)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_UPDATE(CM_3DLUT_READ_WRITE_CONTROL, CM_3DLUT_WRITE_EN_MASK,
   ram_selection_mask);
 REG_SET(CM_3DLUT_INDEX, 0, CM_3DLUT_INDEX, 0);
}

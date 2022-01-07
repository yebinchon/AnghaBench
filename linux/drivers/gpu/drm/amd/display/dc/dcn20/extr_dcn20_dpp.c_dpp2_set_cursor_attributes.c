
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
struct TYPE_3__ {scalar_t__ ENABLE_CURSOR_DEGAMMA; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct dc_cursor_attributes {int color_format; TYPE_2__ attribute_flags; } ;
typedef enum dc_cursor_color_format { ____Placeholder_dc_cursor_color_format } dc_cursor_color_format ;


 int CUR0_COLOR0 ;
 int CUR0_COLOR1 ;
 int CUR0_EXPANSION_MODE ;
 int CUR0_MODE ;
 int CUR0_ROM_EN ;
 int CURSOR0_COLOR0 ;
 int CURSOR0_COLOR1 ;
 int CURSOR0_CONTROL ;
 int CURSOR_MODE_COLOR_PRE_MULTIPLIED_ALPHA ;
 int CURSOR_MODE_COLOR_UN_PRE_MULTIPLIED_ALPHA ;
 int CURSOR_MODE_MONO ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int ,int ,int) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

void dpp2_set_cursor_attributes(
  struct dpp *dpp_base,
  struct dc_cursor_attributes *cursor_attributes)
{
 enum dc_cursor_color_format color_format = cursor_attributes->color_format;
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);
 int cur_rom_en = 0;

 if (color_format == CURSOR_MODE_COLOR_PRE_MULTIPLIED_ALPHA ||
  color_format == CURSOR_MODE_COLOR_UN_PRE_MULTIPLIED_ALPHA) {
  if (cursor_attributes->attribute_flags.bits.ENABLE_CURSOR_DEGAMMA) {
   cur_rom_en = 1;
  }
 }

 REG_UPDATE_3(CURSOR0_CONTROL,
   CUR0_MODE, color_format,
   CUR0_EXPANSION_MODE, 0,
   CUR0_ROM_EN, cur_rom_en);

 if (color_format == CURSOR_MODE_MONO) {

  REG_UPDATE(CURSOR0_COLOR0,
    CUR0_COLOR0, 0x00000000);
  REG_UPDATE(CURSOR0_COLOR1,
    CUR0_COLOR1, 0xFFFFFFFF);
 }
}

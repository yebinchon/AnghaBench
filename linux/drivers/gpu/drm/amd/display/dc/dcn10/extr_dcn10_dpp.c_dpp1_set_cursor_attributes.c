
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;
struct dc_cursor_attributes {int color_format; } ;
typedef enum dc_cursor_color_format { ____Placeholder_dc_cursor_color_format } dc_cursor_color_format ;


 int CUR0_COLOR0 ;
 int CUR0_COLOR1 ;
 int CUR0_EXPANSION_MODE ;
 int CUR0_MODE ;
 int CURSOR0_COLOR0 ;
 int CURSOR0_COLOR1 ;
 int CURSOR0_CONTROL ;
 int CURSOR_MODE_MONO ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int ) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp1_set_cursor_attributes(
  struct dpp *dpp_base,
  struct dc_cursor_attributes *cursor_attributes)
{
 enum dc_cursor_color_format color_format = cursor_attributes->color_format;
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 REG_UPDATE_2(CURSOR0_CONTROL,
   CUR0_MODE, color_format,
   CUR0_EXPANSION_MODE, 0);

 if (color_format == CURSOR_MODE_MONO) {

  REG_UPDATE(CURSOR0_COLOR0,
    CUR0_COLOR0, 0x00000000);
  REG_UPDATE(CURSOR0_COLOR1,
    CUR0_COLOR1, 0xFFFFFFFF);
 }
}

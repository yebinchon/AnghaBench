
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;
struct dc_cursor_position {int x; int x_hotspot; int y; int y_hotspot; scalar_t__ enable; } ;
struct TYPE_2__ {int x; int y; scalar_t__ height; scalar_t__ width; } ;
struct dc_cursor_mi_param {scalar_t__ rotation; TYPE_1__ viewport; } ;


 int CUR0_ENABLE ;
 int CURSOR0_CONTROL ;
 int REG_UPDATE (int ,int ,int) ;
 scalar_t__ ROTATION_ANGLE_180 ;
 scalar_t__ ROTATION_ANGLE_270 ;
 scalar_t__ ROTATION_ANGLE_90 ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;
 int swap (int,int) ;

void dpp1_set_cursor_position(
  struct dpp *dpp_base,
  const struct dc_cursor_position *pos,
  const struct dc_cursor_mi_param *param,
  uint32_t width,
  uint32_t height)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);
 int src_x_offset = pos->x - pos->x_hotspot - param->viewport.x;
 int src_y_offset = pos->y - pos->y_hotspot - param->viewport.y;
 uint32_t cur_en = pos->enable ? 1 : 0;


 if (param->rotation == ROTATION_ANGLE_90 || param->rotation == ROTATION_ANGLE_270) {
  swap(width, height);
  if (param->rotation == ROTATION_ANGLE_90) {
   src_x_offset = pos->x - pos->y_hotspot - param->viewport.x;
   src_y_offset = pos->y - pos->x_hotspot - param->viewport.y;
  }
 } else if (param->rotation == ROTATION_ANGLE_180) {
  src_x_offset = pos->x - param->viewport.x;
  src_y_offset = pos->y - param->viewport.y;
 }


 if (src_x_offset >= (int)param->viewport.width)
  cur_en = 0;

 if (src_x_offset + (int)width <= 0)
  cur_en = 0;

 if (src_y_offset >= (int)param->viewport.height)
  cur_en = 0;

 if (src_y_offset + (int)height <= 0)
  cur_en = 0;

 REG_UPDATE(CURSOR0_CONTROL,
   CUR0_ENABLE, cur_en);

}

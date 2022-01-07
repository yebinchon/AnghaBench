
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_pixel_processor {int dummy; } ;
struct dce_ipp {int dummy; } ;
struct dc_cursor_position {int enable; int y_hotspot; int x_hotspot; int y; int x; } ;
struct dc_cursor_mi_param {int dummy; } ;


 int CURSOR_EN ;
 int CURSOR_HOT_SPOT_X ;
 int CURSOR_HOT_SPOT_Y ;
 int CURSOR_UPDATE_LOCK ;
 int CURSOR_X_POSITION ;
 int CURSOR_Y_POSITION ;
 int CUR_CONTROL ;
 int CUR_HOT_SPOT ;
 int CUR_POSITION ;
 int CUR_UPDATE ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dce_ipp* TO_DCE_IPP (struct input_pixel_processor*) ;

__attribute__((used)) static void dce_ipp_cursor_set_position(
 struct input_pixel_processor *ipp,
 const struct dc_cursor_position *position,
 const struct dc_cursor_mi_param *param)
{
 struct dce_ipp *ipp_dce = TO_DCE_IPP(ipp);


 REG_UPDATE(CUR_UPDATE, CURSOR_UPDATE_LOCK, 1);



 REG_UPDATE(CUR_CONTROL, CURSOR_EN, position->enable);

 REG_SET_2(CUR_POSITION, 0,
  CURSOR_X_POSITION, position->x,
  CURSOR_Y_POSITION, position->y);

 REG_SET_2(CUR_HOT_SPOT, 0,
  CURSOR_HOT_SPOT_X, position->x_hotspot,
  CURSOR_HOT_SPOT_Y, position->y_hotspot);


 REG_UPDATE(CUR_UPDATE, CURSOR_UPDATE_LOCK, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int x; int y; int width; int height; } ;
struct scaler_data {int h_active; int v_active; TYPE_1__ recout; } ;
struct dcn10_dpp {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int DSCL_EXT_OVERSCAN_LEFT_RIGHT ;
 int DSCL_EXT_OVERSCAN_TOP_BOTTOM ;
 int EXT_OVERSCAN_BOTTOM ;
 int EXT_OVERSCAN_LEFT ;
 int EXT_OVERSCAN_RIGHT ;
 int EXT_OVERSCAN_TOP ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;

__attribute__((used)) static void dpp1_dscl_set_overscan(
 struct dcn10_dpp *dpp,
 const struct scaler_data *data)
{
 uint32_t left = data->recout.x;
 uint32_t top = data->recout.y;

 int right = data->h_active - data->recout.x - data->recout.width;
 int bottom = data->v_active - data->recout.y - data->recout.height;

 if (right < 0) {
  BREAK_TO_DEBUGGER();
  right = 0;
 }
 if (bottom < 0) {
  BREAK_TO_DEBUGGER();
  bottom = 0;
 }

 REG_SET_2(DSCL_EXT_OVERSCAN_LEFT_RIGHT, 0,
  EXT_OVERSCAN_LEFT, left,
  EXT_OVERSCAN_RIGHT, right);

 REG_SET_2(DSCL_EXT_OVERSCAN_TOP_BOTTOM, 0,
  EXT_OVERSCAN_BOTTOM, bottom,
  EXT_OVERSCAN_TOP, top);
}

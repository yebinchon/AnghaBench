
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int x; int width; int y; int height; } ;
struct scaler_data {int h_active; int v_active; TYPE_3__ recout; } ;
struct TYPE_9__ {TYPE_5__* ctx; } ;
struct dce_transform {TYPE_4__ base; } ;
struct TYPE_10__ {TYPE_2__* dc; } ;
struct TYPE_6__ {scalar_t__ visual_confirm; } ;
struct TYPE_7__ {TYPE_1__ debug; } ;


 int BREAK_TO_DEBUGGER () ;
 int EXT_OVERSCAN_BOTTOM ;
 int EXT_OVERSCAN_LEFT ;
 int EXT_OVERSCAN_LEFT_RIGHT ;
 int EXT_OVERSCAN_RIGHT ;
 int EXT_OVERSCAN_TOP ;
 int EXT_OVERSCAN_TOP_BOTTOM ;
 scalar_t__ VISUAL_CONFIRM_DISABLE ;
 int dm_write_reg (TYPE_5__*,int ,int ) ;
 int mmSCLV_EXT_OVERSCAN_LEFT_RIGHT ;
 int mmSCLV_EXT_OVERSCAN_TOP_BOTTOM ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void program_overscan(
  struct dce_transform *xfm_dce,
  const struct scaler_data *data)
{
 uint32_t overscan_left_right = 0;
 uint32_t overscan_top_bottom = 0;

 int overscan_right = data->h_active - data->recout.x - data->recout.width;
 int overscan_bottom = data->v_active - data->recout.y - data->recout.height;

 if (xfm_dce->base.ctx->dc->debug.visual_confirm != VISUAL_CONFIRM_DISABLE) {
  overscan_bottom += 2;
  overscan_right += 2;
 }

 if (overscan_right < 0) {
  BREAK_TO_DEBUGGER();
  overscan_right = 0;
 }
 if (overscan_bottom < 0) {
  BREAK_TO_DEBUGGER();
  overscan_bottom = 0;
 }

 set_reg_field_value(overscan_left_right, data->recout.x,
   EXT_OVERSCAN_LEFT_RIGHT, EXT_OVERSCAN_LEFT);

 set_reg_field_value(overscan_left_right, overscan_right,
   EXT_OVERSCAN_LEFT_RIGHT, EXT_OVERSCAN_RIGHT);

 set_reg_field_value(overscan_top_bottom, data->recout.y,
   EXT_OVERSCAN_TOP_BOTTOM, EXT_OVERSCAN_TOP);

 set_reg_field_value(overscan_top_bottom, overscan_bottom,
   EXT_OVERSCAN_TOP_BOTTOM, EXT_OVERSCAN_BOTTOM);

 dm_write_reg(xfm_dce->base.ctx,
   mmSCLV_EXT_OVERSCAN_LEFT_RIGHT,
   overscan_left_right);

 dm_write_reg(xfm_dce->base.ctx,
   mmSCLV_EXT_OVERSCAN_TOP_BOTTOM,
   overscan_top_bottom);
}

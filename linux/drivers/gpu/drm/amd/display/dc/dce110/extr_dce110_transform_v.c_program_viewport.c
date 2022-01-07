
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rect {int width; int height; int y; int x; } ;
struct TYPE_2__ {struct dc_context* ctx; } ;
struct dce_transform {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int SCLV_VIEWPORT_SIZE ;
 int SCLV_VIEWPORT_SIZE_C ;
 int SCLV_VIEWPORT_START ;
 int SCLV_VIEWPORT_START_C ;
 int VIEWPORT_HEIGHT ;
 int VIEWPORT_HEIGHT_C ;
 int VIEWPORT_WIDTH ;
 int VIEWPORT_WIDTH_C ;
 int VIEWPORT_X_START ;
 int VIEWPORT_X_START_C ;
 int VIEWPORT_Y_START ;
 int VIEWPORT_Y_START_C ;
 int dm_write_reg (struct dc_context*,scalar_t__,scalar_t__) ;
 scalar_t__ mmSCLV_VIEWPORT_SIZE ;
 scalar_t__ mmSCLV_VIEWPORT_SIZE_C ;
 scalar_t__ mmSCLV_VIEWPORT_START ;
 scalar_t__ mmSCLV_VIEWPORT_START_C ;
 int set_reg_field_value (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void program_viewport(
 struct dce_transform *xfm_dce,
 struct rect *luma_view_port,
 struct rect *chroma_view_port)
{
 struct dc_context *ctx = xfm_dce->base.ctx;
 uint32_t value = 0;
 uint32_t addr = 0;

 if (luma_view_port->width != 0 && luma_view_port->height != 0) {
  addr = mmSCLV_VIEWPORT_START;
  value = 0;
  set_reg_field_value(
   value,
   luma_view_port->x,
   SCLV_VIEWPORT_START,
   VIEWPORT_X_START);
  set_reg_field_value(
   value,
   luma_view_port->y,
   SCLV_VIEWPORT_START,
   VIEWPORT_Y_START);
  dm_write_reg(ctx, addr, value);

  addr = mmSCLV_VIEWPORT_SIZE;
  value = 0;
  set_reg_field_value(
   value,
   luma_view_port->height,
   SCLV_VIEWPORT_SIZE,
   VIEWPORT_HEIGHT);
  set_reg_field_value(
   value,
   luma_view_port->width,
   SCLV_VIEWPORT_SIZE,
   VIEWPORT_WIDTH);
  dm_write_reg(ctx, addr, value);
 }

 if (chroma_view_port->width != 0 && chroma_view_port->height != 0) {
  addr = mmSCLV_VIEWPORT_START_C;
  value = 0;
  set_reg_field_value(
   value,
   chroma_view_port->x,
   SCLV_VIEWPORT_START_C,
   VIEWPORT_X_START_C);
  set_reg_field_value(
   value,
   chroma_view_port->y,
   SCLV_VIEWPORT_START_C,
   VIEWPORT_Y_START_C);
  dm_write_reg(ctx, addr, value);

  addr = mmSCLV_VIEWPORT_SIZE_C;
  value = 0;
  set_reg_field_value(
   value,
   chroma_view_port->height,
   SCLV_VIEWPORT_SIZE_C,
   VIEWPORT_HEIGHT_C);
  set_reg_field_value(
   value,
   chroma_view_port->width,
   SCLV_VIEWPORT_SIZE_C,
   VIEWPORT_WIDTH_C);
  dm_write_reg(ctx, addr, value);
 }
}

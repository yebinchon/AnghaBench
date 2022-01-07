
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ENABLE_MAGNIFICATION; } ;
struct TYPE_6__ {TYPE_2__ bits; } ;
struct TYPE_4__ {int low_part; int high_part; } ;
struct dc_cursor_attributes {TYPE_3__ attribute_flags; int color_format; int height; int width; TYPE_1__ address; int pitch; } ;
struct hubp {struct dc_cursor_attributes curs_attr; } ;
struct dcn20_hubp {int dummy; } ;
typedef enum cursor_pitch { ____Placeholder_cursor_pitch } cursor_pitch ;
typedef enum cursor_lines_per_chunk { ____Placeholder_cursor_lines_per_chunk } cursor_lines_per_chunk ;


 int CURSOR0_CHUNK_HDL_ADJUST ;
 int CURSOR0_DST_Y_OFFSET ;
 int CURSOR_2X_MAGNIFY ;
 int CURSOR_CONTROL ;
 int CURSOR_HEIGHT ;
 int CURSOR_LINES_PER_CHUNK ;
 int CURSOR_MODE ;
 int CURSOR_PITCH ;
 int CURSOR_SETTINGS ;
 int CURSOR_SIZE ;
 int CURSOR_SURFACE_ADDRESS ;
 int CURSOR_SURFACE_ADDRESS_HIGH ;
 int CURSOR_WIDTH ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int) ;
 int REG_UPDATE (int ,int ,int ) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int REG_UPDATE_4 (int ,int ,int ,int ,int ,int ,int,int ,int) ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;
 int hubp1_get_cursor_pitch (int ) ;
 int hubp2_get_lines_per_chunk (int ,int ) ;

void hubp2_cursor_set_attributes(
  struct hubp *hubp,
  const struct dc_cursor_attributes *attr)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);
 enum cursor_pitch hw_pitch = hubp1_get_cursor_pitch(attr->pitch);
 enum cursor_lines_per_chunk lpc = hubp2_get_lines_per_chunk(
   attr->width, attr->color_format);

 hubp->curs_attr = *attr;

 REG_UPDATE(CURSOR_SURFACE_ADDRESS_HIGH,
   CURSOR_SURFACE_ADDRESS_HIGH, attr->address.high_part);
 REG_UPDATE(CURSOR_SURFACE_ADDRESS,
   CURSOR_SURFACE_ADDRESS, attr->address.low_part);

 REG_UPDATE_2(CURSOR_SIZE,
   CURSOR_WIDTH, attr->width,
   CURSOR_HEIGHT, attr->height);

 REG_UPDATE_4(CURSOR_CONTROL,
   CURSOR_MODE, attr->color_format,
   CURSOR_2X_MAGNIFY, attr->attribute_flags.bits.ENABLE_MAGNIFICATION,
   CURSOR_PITCH, hw_pitch,
   CURSOR_LINES_PER_CHUNK, lpc);

 REG_SET_2(CURSOR_SETTINGS, 0,

   CURSOR0_DST_Y_OFFSET, 0,

   CURSOR0_CHUNK_HDL_ADJUST, 3);
}

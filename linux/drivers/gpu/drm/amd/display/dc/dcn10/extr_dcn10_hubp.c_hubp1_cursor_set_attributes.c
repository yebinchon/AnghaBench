
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int low_part; int high_part; } ;
struct dc_cursor_attributes {int color_format; int height; int width; TYPE_1__ address; int pitch; } ;
struct hubp {struct dc_cursor_attributes curs_attr; } ;
struct dcn10_hubp {int dummy; } ;
typedef enum cursor_pitch { ____Placeholder_cursor_pitch } cursor_pitch ;
typedef enum cursor_lines_per_chunk { ____Placeholder_cursor_lines_per_chunk } cursor_lines_per_chunk ;


 int CURSOR0_CHUNK_HDL_ADJUST ;
 int CURSOR0_DST_Y_OFFSET ;
 int CURSOR_CONTROL ;
 int CURSOR_HEIGHT ;
 int CURSOR_LINES_PER_CHUNK ;
 int CURSOR_MODE ;
 int CURSOR_PITCH ;
 int CURSOR_SETTINS ;
 int CURSOR_SIZE ;
 int CURSOR_SURFACE_ADDRESS ;
 int CURSOR_SURFACE_ADDRESS_HIGH ;
 int CURSOR_WIDTH ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int) ;
 int REG_UPDATE (int ,int ,int ) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int REG_UPDATE_3 (int ,int ,int ,int ,int,int ,int) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;
 int hubp1_get_cursor_pitch (int ) ;
 int hubp1_get_lines_per_chunk (int ,int ) ;

void hubp1_cursor_set_attributes(
  struct hubp *hubp,
  const struct dc_cursor_attributes *attr)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);
 enum cursor_pitch hw_pitch = hubp1_get_cursor_pitch(attr->pitch);
 enum cursor_lines_per_chunk lpc = hubp1_get_lines_per_chunk(
   attr->width, attr->color_format);

 hubp->curs_attr = *attr;

 REG_UPDATE(CURSOR_SURFACE_ADDRESS_HIGH,
   CURSOR_SURFACE_ADDRESS_HIGH, attr->address.high_part);
 REG_UPDATE(CURSOR_SURFACE_ADDRESS,
   CURSOR_SURFACE_ADDRESS, attr->address.low_part);

 REG_UPDATE_2(CURSOR_SIZE,
   CURSOR_WIDTH, attr->width,
   CURSOR_HEIGHT, attr->height);

 REG_UPDATE_3(CURSOR_CONTROL,
   CURSOR_MODE, attr->color_format,
   CURSOR_PITCH, hw_pitch,
   CURSOR_LINES_PER_CHUNK, lpc);

 REG_SET_2(CURSOR_SETTINS, 0,

   CURSOR0_DST_Y_OFFSET, 0,

   CURSOR0_CHUNK_HDL_ADJUST, 3);
}

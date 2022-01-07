
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int ctx; } ;
struct dce_mem_input {TYPE_1__ base; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;


 int GRPH_DEPTH ;
 int GRPH_FORMAT ;
 int SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;
 int UNP_GRPH_CONTROL ;
 int UNP_GRPH_CONTROL_EXP ;
 int VIDEO_FORMAT ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmUNP_GRPH_CONTROL ;
 int mmUNP_GRPH_CONTROL_EXP ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void program_pixel_format(
 struct dce_mem_input *mem_input110,
 enum surface_pixel_format format)
{
 if (format < SURFACE_PIXEL_FORMAT_VIDEO_BEGIN) {
  uint32_t value;
  uint8_t grph_depth;
  uint8_t grph_format;

  value = dm_read_reg(
    mem_input110->base.ctx,
    mmUNP_GRPH_CONTROL);

  switch (format) {
  case 131:
   grph_depth = 0;
   grph_format = 0;
   break;
  case 130:
   grph_depth = 1;
   grph_format = 1;
   break;
  case 132:
  case 136:
   grph_depth = 2;
   grph_format = 0;
   break;
  case 133:
  case 138:
  case 137:
   grph_depth = 2;
   grph_format = 1;
   break;
  case 135:
  case 139:
  case 134:
   grph_depth = 3;
   grph_format = 0;
   break;
  default:
   grph_depth = 2;
   grph_format = 0;
   break;
  }

  set_reg_field_value(
    value,
    grph_depth,
    UNP_GRPH_CONTROL,
    GRPH_DEPTH);
  set_reg_field_value(
    value,
    grph_format,
    UNP_GRPH_CONTROL,
    GRPH_FORMAT);

  dm_write_reg(
    mem_input110->base.ctx,
    mmUNP_GRPH_CONTROL,
    value);

  value = dm_read_reg(
    mem_input110->base.ctx,
    mmUNP_GRPH_CONTROL_EXP);


  set_reg_field_value(
    value,
    0,
    UNP_GRPH_CONTROL_EXP,
    VIDEO_FORMAT);
  dm_write_reg(
    mem_input110->base.ctx,
    mmUNP_GRPH_CONTROL_EXP,
    value);

 } else {

  uint32_t value;
  uint8_t video_format;

  value = dm_read_reg(
    mem_input110->base.ctx,
    mmUNP_GRPH_CONTROL_EXP);

  switch (format) {
  case 129:
   video_format = 2;
   break;
  case 128:
   video_format = 3;
   break;
  default:
   video_format = 0;
   break;
  }

  set_reg_field_value(
   value,
   video_format,
   UNP_GRPH_CONTROL_EXP,
   VIDEO_FORMAT);

  dm_write_reg(
   mem_input110->base.ctx,
   mmUNP_GRPH_CONTROL_EXP,
   value);
 }
}

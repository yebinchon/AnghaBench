
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int x; int y; int width; int height; } ;
struct TYPE_4__ {int x; int y; int width; int height; } ;
struct plane_size {int surface_pitch; int chroma_pitch; TYPE_2__ chroma_size; TYPE_1__ surface_size; } ;
struct TYPE_6__ {int ctx; } ;
struct dce_mem_input {TYPE_3__ base; } ;
typedef enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;


 int GRPH_PITCH_C ;
 int GRPH_PITCH_L ;
 int GRPH_X_END_C ;
 int GRPH_X_END_L ;
 int GRPH_X_START_C ;
 int GRPH_X_START_L ;
 int GRPH_Y_END_C ;
 int GRPH_Y_END_L ;
 int GRPH_Y_START_C ;
 int GRPH_Y_START_L ;
 int ROTATION_ANGLE ;



 int UNP_GRPH_PITCH_C ;
 int UNP_GRPH_PITCH_L ;
 int UNP_GRPH_X_END_C ;
 int UNP_GRPH_X_END_L ;
 int UNP_GRPH_X_START_C ;
 int UNP_GRPH_X_START_L ;
 int UNP_GRPH_Y_END_C ;
 int UNP_GRPH_Y_END_L ;
 int UNP_GRPH_Y_START_C ;
 int UNP_GRPH_Y_START_L ;
 int UNP_HW_ROTATION ;
 int dm_write_reg (int ,int ,scalar_t__) ;
 int mmUNP_GRPH_PITCH_C ;
 int mmUNP_GRPH_PITCH_L ;
 int mmUNP_GRPH_X_END_C ;
 int mmUNP_GRPH_X_END_L ;
 int mmUNP_GRPH_X_START_C ;
 int mmUNP_GRPH_X_START_L ;
 int mmUNP_GRPH_Y_END_C ;
 int mmUNP_GRPH_Y_END_L ;
 int mmUNP_GRPH_Y_START_C ;
 int mmUNP_GRPH_Y_START_L ;
 int mmUNP_HW_ROTATION ;
 int set_reg_field_value (scalar_t__,int,int ,int ) ;
 int swap (int,int) ;

__attribute__((used)) static void program_size_and_rotation(
 struct dce_mem_input *mem_input110,
 enum dc_rotation_angle rotation,
 const struct plane_size *plane_size)
{
 uint32_t value = 0;
 struct plane_size local_size = *plane_size;

 if (rotation == 128 ||
  rotation == 129) {

  swap(local_size.surface_size.x,
       local_size.surface_size.y);
  swap(local_size.surface_size.width,
       local_size.surface_size.height);
  swap(local_size.chroma_size.x,
       local_size.chroma_size.y);
  swap(local_size.chroma_size.width,
       local_size.chroma_size.height);
 }

 value = 0;
 set_reg_field_value(value, local_size.surface_pitch,
   UNP_GRPH_PITCH_L, GRPH_PITCH_L);

 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_PITCH_L,
  value);

 value = 0;
 set_reg_field_value(value, local_size.chroma_pitch,
   UNP_GRPH_PITCH_C, GRPH_PITCH_C);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_PITCH_C,
  value);

 value = 0;
 set_reg_field_value(value, 0,
   UNP_GRPH_X_START_L, GRPH_X_START_L);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_X_START_L,
  value);

 value = 0;
 set_reg_field_value(value, 0,
   UNP_GRPH_X_START_C, GRPH_X_START_C);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_X_START_C,
  value);

 value = 0;
 set_reg_field_value(value, 0,
   UNP_GRPH_Y_START_L, GRPH_Y_START_L);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_Y_START_L,
  value);

 value = 0;
 set_reg_field_value(value, 0,
   UNP_GRPH_Y_START_C, GRPH_Y_START_C);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_Y_START_C,
  value);

 value = 0;
 set_reg_field_value(value, local_size.surface_size.x +
   local_size.surface_size.width,
   UNP_GRPH_X_END_L, GRPH_X_END_L);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_X_END_L,
  value);

 value = 0;
 set_reg_field_value(value, local_size.chroma_size.x +
   local_size.chroma_size.width,
   UNP_GRPH_X_END_C, GRPH_X_END_C);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_X_END_C,
  value);

 value = 0;
 set_reg_field_value(value, local_size.surface_size.y +
   local_size.surface_size.height,
   UNP_GRPH_Y_END_L, GRPH_Y_END_L);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_Y_END_L,
  value);

 value = 0;
 set_reg_field_value(value, local_size.chroma_size.y +
   local_size.chroma_size.height,
   UNP_GRPH_Y_END_C, GRPH_Y_END_C);
 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_Y_END_C,
  value);

 value = 0;
 switch (rotation) {
 case 128:
  set_reg_field_value(value, 3,
   UNP_HW_ROTATION, ROTATION_ANGLE);
  break;
 case 130:
  set_reg_field_value(value, 2,
   UNP_HW_ROTATION, ROTATION_ANGLE);
  break;
 case 129:
  set_reg_field_value(value, 1,
   UNP_HW_ROTATION, ROTATION_ANGLE);
  break;
 default:
  set_reg_field_value(value, 0,
   UNP_HW_ROTATION, ROTATION_ANGLE);
  break;
 }

 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_HW_ROTATION,
  value);
}

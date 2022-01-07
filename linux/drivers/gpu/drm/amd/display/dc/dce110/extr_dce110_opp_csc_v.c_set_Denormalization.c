
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct transform {int ctx; } ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;





 int DENORM_10BIT_OUT ;
 int DENORM_CLAMP_CONTROL ;
 int DENORM_MODE ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmDENORM_CLAMP_CONTROL ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void set_Denormalization(struct transform *xfm,
  enum dc_color_depth color_depth)
{
 uint32_t value = dm_read_reg(xfm->ctx, mmDENORM_CLAMP_CONTROL);

 switch (color_depth) {
 case 128:

  set_reg_field_value(
   value,
   1,
   DENORM_CLAMP_CONTROL,
   DENORM_MODE);
  break;
 case 130:

  set_reg_field_value(
   value,
   2,
   DENORM_CLAMP_CONTROL,
   DENORM_MODE);
  break;
 case 129:

  set_reg_field_value(
   value,
   3,
   DENORM_CLAMP_CONTROL,
   DENORM_MODE);
  break;
 default:

  break;
 }

 set_reg_field_value(
  value,
  1,
  DENORM_CLAMP_CONTROL,
  DENORM_10BIT_OUT);

 dm_write_reg(xfm->ctx, mmDENORM_CLAMP_CONTROL, value);
}

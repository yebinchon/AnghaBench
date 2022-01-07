
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int controller_id; } ;
 int D1VGA_CONTROL ;
 int D1VGA_MODE_ENABLE ;
 int D1VGA_OVERSCAN_COLOR_EN ;
 int D1VGA_SYNC_POLARITY_SELECT ;
 int D1VGA_TIMING_SELECT ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 scalar_t__ dm_read_reg_soc15 (int ,scalar_t__,scalar_t__) ;
 int dm_write_reg_soc15 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ mmD1VGA_CONTROL ;
 scalar_t__ mmD2VGA_CONTROL ;
 scalar_t__ mmD3VGA_CONTROL ;
 scalar_t__ mmD4VGA_CONTROL ;
 scalar_t__ mmD5VGA_CONTROL ;
 scalar_t__ mmD6VGA_CONTROL ;
 int set_reg_field_value (scalar_t__,int ,int ,int ) ;

void dce120_timing_generator_disable_vga(struct timing_generator *tg)
{
 uint32_t offset = 0;
 uint32_t value = 0;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 switch (tg110->controller_id) {
 case 133:
  offset = 0;
  break;
 case 132:
  offset = mmD2VGA_CONTROL - mmD1VGA_CONTROL;
  break;
 case 131:
  offset = mmD3VGA_CONTROL - mmD1VGA_CONTROL;
  break;
 case 130:
  offset = mmD4VGA_CONTROL - mmD1VGA_CONTROL;
  break;
 case 129:
  offset = mmD5VGA_CONTROL - mmD1VGA_CONTROL;
  break;
 case 128:
  offset = mmD6VGA_CONTROL - mmD1VGA_CONTROL;
  break;
 default:
  break;
 }

 value = dm_read_reg_soc15(tg->ctx, mmD1VGA_CONTROL, offset);

 set_reg_field_value(value, 0, D1VGA_CONTROL, D1VGA_MODE_ENABLE);
 set_reg_field_value(value, 0, D1VGA_CONTROL, D1VGA_TIMING_SELECT);
 set_reg_field_value(
   value, 0, D1VGA_CONTROL, D1VGA_SYNC_POLARITY_SELECT);
 set_reg_field_value(value, 0, D1VGA_CONTROL, D1VGA_OVERSCAN_COLOR_EN);

 dm_write_reg_soc15(tg->ctx, mmD1VGA_CONTROL, offset, value);
}

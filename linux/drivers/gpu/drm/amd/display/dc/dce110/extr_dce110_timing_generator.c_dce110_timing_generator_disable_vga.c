
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int controller_id; } ;
 int D1VGA_CONTROL ;
 int D1VGA_MODE_ENABLE ;
 int D1VGA_OVERSCAN_COLOR_EN ;
 int D1VGA_SYNC_POLARITY_SELECT ;
 int D1VGA_TIMING_SELECT ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmD1VGA_CONTROL ;
 int mmD2VGA_CONTROL ;
 int mmD3VGA_CONTROL ;
 int mmD4VGA_CONTROL ;
 int mmD5VGA_CONTROL ;
 int mmD6VGA_CONTROL ;
 int set_reg_field_value (int ,int ,int ,int ) ;

void dce110_timing_generator_disable_vga(
 struct timing_generator *tg)
{
 uint32_t addr = 0;
 uint32_t value = 0;

 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 switch (tg110->controller_id) {
 case 133:
  addr = mmD1VGA_CONTROL;
  break;
 case 132:
  addr = mmD2VGA_CONTROL;
  break;
 case 131:
  addr = mmD3VGA_CONTROL;
  break;
 case 130:
  addr = mmD4VGA_CONTROL;
  break;
 case 129:
  addr = mmD5VGA_CONTROL;
  break;
 case 128:
  addr = mmD6VGA_CONTROL;
  break;
 default:
  break;
 }
 value = dm_read_reg(tg->ctx, addr);

 set_reg_field_value(value, 0, D1VGA_CONTROL, D1VGA_MODE_ENABLE);
 set_reg_field_value(value, 0, D1VGA_CONTROL, D1VGA_TIMING_SELECT);
 set_reg_field_value(
   value, 0, D1VGA_CONTROL, D1VGA_SYNC_POLARITY_SELECT);
 set_reg_field_value(value, 0, D1VGA_CONTROL, D1VGA_OVERSCAN_COLOR_EN);

 dm_write_reg(tg->ctx, addr, value);
}

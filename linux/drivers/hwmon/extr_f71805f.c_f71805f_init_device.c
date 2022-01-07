
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct f71805f_data {int* fan_ctrl; } ;


 int F71805F_REG_FAN_CTRL (int) ;
 int F71805F_REG_START ;
 int FAN_CTRL_LATCH_FULL ;
 void* f71805f_read8 (struct f71805f_data*,int ) ;
 int f71805f_write8 (struct f71805f_data*,int ,int) ;
 int pr_debug (char*) ;

__attribute__((used)) static void f71805f_init_device(struct f71805f_data *data)
{
 u8 reg;
 int i;

 reg = f71805f_read8(data, F71805F_REG_START);
 if ((reg & 0x41) != 0x01) {
  pr_debug("Starting monitoring operations\n");
  f71805f_write8(data, F71805F_REG_START, (reg | 0x01) & ~0x40);
 }





 for (i = 0; i < 3; i++) {
  data->fan_ctrl[i] = f71805f_read8(data,
        F71805F_REG_FAN_CTRL(i));




  if (data->fan_ctrl[i] & FAN_CTRL_LATCH_FULL) {
   data->fan_ctrl[i] &= ~FAN_CTRL_LATCH_FULL;
   f71805f_write8(data, F71805F_REG_FAN_CTRL(i),
           data->fan_ctrl[i]);
  }
 }
}

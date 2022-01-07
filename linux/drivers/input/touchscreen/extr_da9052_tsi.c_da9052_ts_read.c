
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct input_dev {int dummy; } ;
struct da9052_tsi {int da9052; struct input_dev* dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int DA9052_TSI_LSB_REG ;
 int DA9052_TSI_X_MSB_REG ;
 int DA9052_TSI_Y_MSB_REG ;
 int DA9052_TSI_Z_MSB_REG ;
 int da9052_reg_read (int ,int ) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void da9052_ts_read(struct da9052_tsi *tsi)
{
 struct input_dev *input = tsi->dev;
 int ret;
 u16 x, y, z;
 u8 v;

 ret = da9052_reg_read(tsi->da9052, DA9052_TSI_X_MSB_REG);
 if (ret < 0)
  return;

 x = (u16) ret;

 ret = da9052_reg_read(tsi->da9052, DA9052_TSI_Y_MSB_REG);
 if (ret < 0)
  return;

 y = (u16) ret;

 ret = da9052_reg_read(tsi->da9052, DA9052_TSI_Z_MSB_REG);
 if (ret < 0)
  return;

 z = (u16) ret;

 ret = da9052_reg_read(tsi->da9052, DA9052_TSI_LSB_REG);
 if (ret < 0)
  return;

 v = (u8) ret;

 x = ((x << 2) & 0x3fc) | (v & 0x3);
 y = ((y << 2) & 0x3fc) | ((v & 0xc) >> 2);
 z = ((z << 2) & 0x3fc) | ((v & 0x30) >> 4);

 input_report_key(input, BTN_TOUCH, 1);
 input_report_abs(input, ABS_X, x);
 input_report_abs(input, ABS_Y, y);
 input_report_abs(input, ABS_PRESSURE, z);
 input_sync(input);
}

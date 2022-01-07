
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cy8ctmg110 {struct input_dev* input; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int CY8CTMG110_REG_MAX ;
 int CY8CTMG110_TOUCH_X1 ;
 int EIO ;
 scalar_t__ cy8ctmg110_read_regs (struct cy8ctmg110*,unsigned char*,int,int ) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int cy8ctmg110_touch_pos(struct cy8ctmg110 *tsc)
{
 struct input_dev *input = tsc->input;
 unsigned char reg_p[CY8CTMG110_REG_MAX];
 int x, y;

 memset(reg_p, 0, CY8CTMG110_REG_MAX);


 if (cy8ctmg110_read_regs(tsc, reg_p, 9, CY8CTMG110_TOUCH_X1) != 0)
  return -EIO;

 y = reg_p[2] << 8 | reg_p[3];
 x = reg_p[0] << 8 | reg_p[1];


 if (reg_p[8] == 0) {
  input_report_key(input, BTN_TOUCH, 0);
 } else {
  input_report_key(input, BTN_TOUCH, 1);
  input_report_abs(input, ABS_X, x);
  input_report_abs(input, ABS_Y, y);
 }

 input_sync(input);

 return 0;
}

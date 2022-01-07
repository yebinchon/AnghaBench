
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_dev {int dummy; } ;
struct ims_pcu_gamepad {struct input_dev* input; } ;
struct ims_pcu {struct ims_pcu_gamepad* gamepad; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_A ;
 int BTN_B ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_X ;
 int BTN_Y ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void ims_pcu_gamepad_report(struct ims_pcu *pcu, u32 data)
{
 struct ims_pcu_gamepad *gamepad = pcu->gamepad;
 struct input_dev *input = gamepad->input;
 int x, y;

 x = !!(data & (1 << 14)) - !!(data & (1 << 13));
 y = !!(data & (1 << 12)) - !!(data & (1 << 11));

 input_report_abs(input, ABS_X, x);
 input_report_abs(input, ABS_Y, y);

 input_report_key(input, BTN_A, data & (1 << 7));
 input_report_key(input, BTN_B, data & (1 << 8));
 input_report_key(input, BTN_X, data & (1 << 9));
 input_report_key(input, BTN_Y, data & (1 << 10));
 input_report_key(input, BTN_START, data & (1 << 15));
 input_report_key(input, BTN_SELECT, data & (1 << 16));

 input_sync(input);
}

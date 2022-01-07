
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct steam_device {int dummy; } ;
struct input_dev {int dummy; } ;
typedef int s16 ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_HAT2X ;
 int ABS_HAT2Y ;
 int ABS_RX ;
 int ABS_RY ;
 int ABS_X ;
 int ABS_Y ;
 int BIT (int) ;
 int BTN_A ;
 int BTN_B ;
 int BTN_DPAD_DOWN ;
 int BTN_DPAD_LEFT ;
 int BTN_DPAD_RIGHT ;
 int BTN_DPAD_UP ;
 int BTN_GEAR_DOWN ;
 int BTN_GEAR_UP ;
 int BTN_MODE ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_THUMB ;
 int BTN_THUMB2 ;
 int BTN_THUMBL ;
 int BTN_THUMBR ;
 int BTN_TL ;
 int BTN_TL2 ;
 int BTN_TR ;
 int BTN_TR2 ;
 int BTN_X ;
 int BTN_Y ;
 int EV_KEY ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int steam_le16 (int*) ;

__attribute__((used)) static void steam_do_input_event(struct steam_device *steam,
  struct input_dev *input, u8 *data)
{

 u8 b8, b9, b10;
 s16 x, y;
 bool lpad_touched, lpad_and_joy;

 b8 = data[8];
 b9 = data[9];
 b10 = data[10];

 input_report_abs(input, ABS_HAT2Y, data[11]);
 input_report_abs(input, ABS_HAT2X, data[12]);
 lpad_touched = b10 & BIT(3);
 lpad_and_joy = b10 & BIT(7);
 x = steam_le16(data + 16);
 y = -steam_le16(data + 18);

 input_report_abs(input, lpad_touched ? ABS_HAT0X : ABS_X, x);
 input_report_abs(input, lpad_touched ? ABS_HAT0Y : ABS_Y, y);

 if (lpad_touched && !lpad_and_joy) {
  input_report_abs(input, ABS_X, 0);
  input_report_abs(input, ABS_Y, 0);
 }

 if (!(lpad_touched || lpad_and_joy)) {
  input_report_abs(input, ABS_HAT0X, 0);
  input_report_abs(input, ABS_HAT0Y, 0);
 }

 input_report_abs(input, ABS_RX, steam_le16(data + 20));
 input_report_abs(input, ABS_RY, -steam_le16(data + 22));

 input_event(input, EV_KEY, BTN_TR2, !!(b8 & BIT(0)));
 input_event(input, EV_KEY, BTN_TL2, !!(b8 & BIT(1)));
 input_event(input, EV_KEY, BTN_TR, !!(b8 & BIT(2)));
 input_event(input, EV_KEY, BTN_TL, !!(b8 & BIT(3)));
 input_event(input, EV_KEY, BTN_Y, !!(b8 & BIT(4)));
 input_event(input, EV_KEY, BTN_B, !!(b8 & BIT(5)));
 input_event(input, EV_KEY, BTN_X, !!(b8 & BIT(6)));
 input_event(input, EV_KEY, BTN_A, !!(b8 & BIT(7)));
 input_event(input, EV_KEY, BTN_SELECT, !!(b9 & BIT(4)));
 input_event(input, EV_KEY, BTN_MODE, !!(b9 & BIT(5)));
 input_event(input, EV_KEY, BTN_START, !!(b9 & BIT(6)));
 input_event(input, EV_KEY, BTN_GEAR_DOWN, !!(b9 & BIT(7)));
 input_event(input, EV_KEY, BTN_GEAR_UP, !!(b10 & BIT(0)));
 input_event(input, EV_KEY, BTN_THUMBR, !!(b10 & BIT(2)));
 input_event(input, EV_KEY, BTN_THUMBL, !!(b10 & BIT(6)));
 input_event(input, EV_KEY, BTN_THUMB, lpad_touched || lpad_and_joy);
 input_event(input, EV_KEY, BTN_THUMB2, !!(b10 & BIT(4)));
 input_event(input, EV_KEY, BTN_DPAD_UP, !!(b9 & BIT(0)));
 input_event(input, EV_KEY, BTN_DPAD_RIGHT, !!(b9 & BIT(1)));
 input_event(input, EV_KEY, BTN_DPAD_LEFT, !!(b9 & BIT(2)));
 input_event(input, EV_KEY, BTN_DPAD_DOWN, !!(b9 & BIT(3)));

 input_sync(input);
}

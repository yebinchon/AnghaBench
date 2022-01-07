
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int ABS_X ;
 int BTN_TOUCH ;
 unsigned char I8042_STR_AUXDATA ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__ likely (int) ;
 int serio_interrupt (struct serio*,int,int ) ;
 int slidebar_input_dev ;
 int slidebar_pos_get () ;

__attribute__((used)) static bool slidebar_i8042_filter(unsigned char data, unsigned char str,
      struct serio *port)
{
 static bool extended = 0;


 if (str & I8042_STR_AUXDATA)
  return 0;


 if (data == 0xe0) {
  extended = 1;
  return 1;
 }

 if (!extended)
  return 0;

 extended = 0;

 if (likely((data & 0x7f) != 0x3b)) {
  serio_interrupt(port, 0xe0, 0);
  return 0;
 }

 if (data & 0x80) {
  input_report_key(slidebar_input_dev, BTN_TOUCH, 0);
 } else {
  input_report_key(slidebar_input_dev, BTN_TOUCH, 1);
  input_report_abs(slidebar_input_dev, ABS_X, slidebar_pos_get());
 }
 input_sync(slidebar_input_dev);

 return 1;
}

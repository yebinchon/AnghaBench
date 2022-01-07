
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct grts_state {unsigned int pressure_min; int input; scalar_t__ pressure; int prop; } ;


 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 int input_report_abs (int ,int ,unsigned int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int touchscreen_report_pos (int ,int *,unsigned int,unsigned int,int) ;

__attribute__((used)) static int grts_cb(const void *data, void *private)
{
 const u16 *touch_info = data;
 struct grts_state *st = private;
 unsigned int x, y, press = 0x0;


 x = touch_info[0];
 y = touch_info[1];
 if (st->pressure)
  press = touch_info[2];

 if ((!x && !y) || (st->pressure && (press < st->pressure_min))) {

  input_report_key(st->input, BTN_TOUCH, 0);
  input_sync(st->input);
  return 0;
 }


 touchscreen_report_pos(st->input, &st->prop, x, y, 0);
 if (st->pressure)
  input_report_abs(st->input, ABS_PRESSURE, press);
 input_report_key(st->input, BTN_TOUCH, 1);
 input_sync(st->input);

 return 0;
}

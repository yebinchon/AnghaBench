
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u16 ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {unsigned int x; unsigned int y; unsigned int z1; unsigned int z2; scalar_t__ ignore; scalar_t__ y_buf; scalar_t__ x_buf; } ;
struct ads7846_packet {TYPE_1__ tc; } ;
struct ads7846 {int model; int pressure_max; unsigned int x_plate_ohms; int pendown; TYPE_2__* spi; int core_prop; struct input_dev* input; scalar_t__ penirq_recheck_delay_usecs; struct ads7846_packet* packet; } ;
struct TYPE_4__ {int dev; } ;


 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 unsigned int MAX_12BIT ;
 int dev_vdbg (int *,char*,...) ;
 scalar_t__ get_pendown_state (struct ads7846*) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ likely (int) ;
 int touchscreen_report_pos (struct input_dev*,int *,unsigned int,unsigned int,int) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static void ads7846_report_state(struct ads7846 *ts)
{
 struct ads7846_packet *packet = ts->packet;
 unsigned int Rt;
 u16 x, y, z1, z2;






 if (ts->model == 7845) {
  x = *(u16 *)packet->tc.x_buf;
  y = *(u16 *)packet->tc.y_buf;
  z1 = 0;
  z2 = 0;
 } else {
  x = packet->tc.x;
  y = packet->tc.y;
  z1 = packet->tc.z1;
  z2 = packet->tc.z2;
 }


 if (x == MAX_12BIT)
  x = 0;

 if (ts->model == 7843) {
  Rt = ts->pressure_max / 2;
 } else if (ts->model == 7845) {
  if (get_pendown_state(ts))
   Rt = ts->pressure_max / 2;
  else
   Rt = 0;
  dev_vdbg(&ts->spi->dev, "x/y: %d/%d, PD %d\n", x, y, Rt);
 } else if (likely(x && z1)) {

  Rt = z2;
  Rt -= z1;
  Rt *= x;
  Rt *= ts->x_plate_ohms;
  Rt /= z1;
  Rt = (Rt + 2047) >> 12;
 } else {
  Rt = 0;
 }






 if (packet->tc.ignore || Rt > ts->pressure_max) {
  dev_vdbg(&ts->spi->dev, "ignored %d pressure %d\n",
    packet->tc.ignore, Rt);
  return;
 }





 if (ts->penirq_recheck_delay_usecs) {
  udelay(ts->penirq_recheck_delay_usecs);
  if (!get_pendown_state(ts))
   Rt = 0;
 }
 if (Rt) {
  struct input_dev *input = ts->input;

  if (!ts->pendown) {
   input_report_key(input, BTN_TOUCH, 1);
   ts->pendown = 1;
   dev_vdbg(&ts->spi->dev, "DOWN\n");
  }

  touchscreen_report_pos(input, &ts->core_prop, x, y, 0);
  input_report_abs(input, ABS_PRESSURE, ts->pressure_max - Rt);

  input_sync(input);
  dev_vdbg(&ts->spi->dev, "%4d/%4d/%4d\n", x, y, Rt);
 }
}

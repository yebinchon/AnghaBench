
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct input_dev {int dummy; } ;
struct ad7879 {unsigned int* conversion_data; unsigned int x_plate_ohms; unsigned int x; unsigned int y; unsigned int Rt; int timer; scalar_t__ swap_xy; struct input_dev* input; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 size_t AD7879_SEQ_XPOS ;
 size_t AD7879_SEQ_YPOS ;
 size_t AD7879_SEQ_Z1 ;
 size_t AD7879_SEQ_Z2 ;
 int BTN_TOUCH ;
 int EINVAL ;
 unsigned int MAX_12BIT ;
 unsigned int input_abs_get_max (struct input_dev*,int ) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ likely (int) ;
 int swap (unsigned int,unsigned int) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static int ad7879_report(struct ad7879 *ts)
{
 struct input_dev *input_dev = ts->input;
 unsigned Rt;
 u16 x, y, z1, z2;

 x = ts->conversion_data[AD7879_SEQ_XPOS] & MAX_12BIT;
 y = ts->conversion_data[AD7879_SEQ_YPOS] & MAX_12BIT;
 z1 = ts->conversion_data[AD7879_SEQ_Z1] & MAX_12BIT;
 z2 = ts->conversion_data[AD7879_SEQ_Z2] & MAX_12BIT;

 if (ts->swap_xy)
  swap(x, y);
 if (likely(x && z1)) {

  Rt = (z2 - z1) * x * ts->x_plate_ohms;
  Rt /= z1;
  Rt = (Rt + 2047) >> 12;





  if (Rt > input_abs_get_max(input_dev, ABS_PRESSURE))
   return -EINVAL;







  if (timer_pending(&ts->timer)) {

   input_report_key(input_dev, BTN_TOUCH, 1);
   input_report_abs(input_dev, ABS_X, ts->x);
   input_report_abs(input_dev, ABS_Y, ts->y);
   input_report_abs(input_dev, ABS_PRESSURE, ts->Rt);
   input_sync(input_dev);
  }

  ts->x = x;
  ts->y = y;
  ts->Rt = Rt;

  return 0;
 }

 return -EINVAL;
}

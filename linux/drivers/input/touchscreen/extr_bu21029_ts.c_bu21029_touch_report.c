
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct bu21029_ts_data {int x_plate_ohms; int in_dev; int prop; } ;
typedef int s32 ;


 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 int DIV_ROUND_CLOSEST (int,int ) ;
 int SCALE_12BIT ;
 int input_abs_get_max (int ,int ) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int touchscreen_report_pos (int ,int *,int,int,int) ;

__attribute__((used)) static void bu21029_touch_report(struct bu21029_ts_data *bu21029, const u8 *buf)
{
 u16 x, y, z1, z2;
 u32 rz;
 s32 max_pressure = input_abs_get_max(bu21029->in_dev, ABS_PRESSURE);
 x = (buf[0] << 4) | (buf[1] >> 4);
 y = (buf[2] << 4) | (buf[3] >> 4);
 z1 = (buf[4] << 4) | (buf[5] >> 4);
 z2 = (buf[6] << 4) | (buf[7] >> 4);

 if (z1 && z2) {







  rz = z2 - z1;
  rz *= x;
  rz *= bu21029->x_plate_ohms;
  rz /= z1;
  rz = DIV_ROUND_CLOSEST(rz, SCALE_12BIT);
  if (rz <= max_pressure) {
   touchscreen_report_pos(bu21029->in_dev, &bu21029->prop,
            x, y, 0);
   input_report_abs(bu21029->in_dev, ABS_PRESSURE,
      max_pressure - rz);
   input_report_key(bu21029->in_dev, BTN_TOUCH, 1);
   input_sync(bu21029->in_dev);
  }
 }
}

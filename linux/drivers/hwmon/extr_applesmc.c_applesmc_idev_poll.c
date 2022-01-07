
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef scalar_t__ s16 ;


 int ABS_X ;
 int ABS_Y ;
 int MOTION_SENSOR_X_KEY ;
 int MOTION_SENSOR_Y_KEY ;
 scalar_t__ applesmc_read_s16 (int ,scalar_t__*) ;
 int input_report_abs (struct input_dev*,int ,scalar_t__) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ rest_x ;
 scalar_t__ rest_y ;

__attribute__((used)) static void applesmc_idev_poll(struct input_polled_dev *dev)
{
 struct input_dev *idev = dev->input;
 s16 x, y;

 if (applesmc_read_s16(MOTION_SENSOR_X_KEY, &x))
  return;
 if (applesmc_read_s16(MOTION_SENSOR_Y_KEY, &y))
  return;

 x = -x;
 input_report_abs(idev, ABS_X, x - rest_x);
 input_report_abs(idev, ABS_Y, y - rest_y);
 input_sync(idev);
}

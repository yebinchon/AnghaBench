
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MOTION_SENSOR_X_KEY ;
 int MOTION_SENSOR_Y_KEY ;
 int applesmc_read_s16 (int ,int *) ;
 int rest_x ;
 int rest_y ;

__attribute__((used)) static void applesmc_calibrate(void)
{
 applesmc_read_s16(MOTION_SENSOR_X_KEY, &rest_x);
 applesmc_read_s16(MOTION_SENSOR_Y_KEY, &rest_y);
 rest_x = -rest_x;
}

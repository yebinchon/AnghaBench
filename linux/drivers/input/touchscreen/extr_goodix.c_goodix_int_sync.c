
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goodix_ts_data {int gpiod_int; } ;


 int gpiod_direction_input (int ) ;
 int gpiod_direction_output (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static int goodix_int_sync(struct goodix_ts_data *ts)
{
 int error;

 error = gpiod_direction_output(ts->gpiod_int, 0);
 if (error)
  return error;

 msleep(50);

 error = gpiod_direction_input(ts->gpiod_int);
 if (error)
  return error;

 return 0;
}

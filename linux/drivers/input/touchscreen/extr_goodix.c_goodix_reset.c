
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct goodix_ts_data {int gpiod_rst; TYPE_1__* client; int gpiod_int; } ;
struct TYPE_2__ {int addr; } ;


 int goodix_int_sync (struct goodix_ts_data*) ;
 int gpiod_direction_input (int ) ;
 int gpiod_direction_output (int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int goodix_reset(struct goodix_ts_data *ts)
{
 int error;


 error = gpiod_direction_output(ts->gpiod_rst, 0);
 if (error)
  return error;

 msleep(20);


 error = gpiod_direction_output(ts->gpiod_int, ts->client->addr == 0x14);
 if (error)
  return error;

 usleep_range(100, 2000);

 error = gpiod_direction_output(ts->gpiod_rst, 1);
 if (error)
  return error;

 usleep_range(6000, 10000);


 error = gpiod_direction_input(ts->gpiod_rst);
 if (error)
  return error;

 error = goodix_int_sync(ts);
 if (error)
  return error;

 return 0;
}

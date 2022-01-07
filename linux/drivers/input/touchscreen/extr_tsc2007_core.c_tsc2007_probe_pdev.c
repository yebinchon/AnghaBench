
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007_platform_data {scalar_t__ x_plate_ohms; int fuzzz; int fuzzy; int fuzzx; int clear_penirq; int get_pendown_state; scalar_t__ poll_period; scalar_t__ max_rt; int model; } ;
struct tsc2007 {scalar_t__ x_plate_ohms; int fuzzz; int fuzzy; int fuzzx; int clear_penirq; int get_pendown_state; int poll_period; int max_rt; int model; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int MAX_12BIT ;
 int dev_err (int *,char*) ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static int tsc2007_probe_pdev(struct i2c_client *client, struct tsc2007 *ts,
         const struct tsc2007_platform_data *pdata,
         const struct i2c_device_id *id)
{
 ts->model = pdata->model;
 ts->x_plate_ohms = pdata->x_plate_ohms;
 ts->max_rt = pdata->max_rt ? : MAX_12BIT;
 ts->poll_period = msecs_to_jiffies(pdata->poll_period ? : 1);
 ts->get_pendown_state = pdata->get_pendown_state;
 ts->clear_penirq = pdata->clear_penirq;
 ts->fuzzx = pdata->fuzzx;
 ts->fuzzy = pdata->fuzzy;
 ts->fuzzz = pdata->fuzzz;

 if (pdata->x_plate_ohms == 0) {
  dev_err(&client->dev, "x_plate_ohms is not set up in platform data");
  return -EINVAL;
 }

 return 0;
}

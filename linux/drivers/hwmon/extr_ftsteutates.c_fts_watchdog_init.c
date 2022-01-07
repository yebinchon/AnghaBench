
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int timeout; int min_timeout; int max_hw_heartbeat_ms; int * parent; int * ops; int * info; int status; } ;
struct fts_data {TYPE_1__ wdd; TYPE_3__* client; scalar_t__ resolution; } ;
struct TYPE_5__ {int dev; } ;


 int BIT (int) ;
 int FTS_WATCHDOG_CONTROL ;
 int FTS_WATCHDOG_TIME_PRESET ;
 int MSEC_PER_SEC ;
 int WDOG_HW_RUNNING ;
 int fts_read_byte (TYPE_3__*,int ) ;
 int fts_wd_info ;
 int fts_wd_ops ;
 int fts_wd_set_resolution (struct fts_data*,scalar_t__) ;
 scalar_t__ minutes ;
 scalar_t__ seconds ;
 int set_bit (int ,int *) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct fts_data*) ;

__attribute__((used)) static int fts_watchdog_init(struct fts_data *data)
{
 int timeout, ret;

 watchdog_set_drvdata(&data->wdd, data);

 timeout = fts_read_byte(data->client, FTS_WATCHDOG_TIME_PRESET);
 if (timeout < 0)
  return timeout;


 if (timeout == 0) {
  ret = fts_wd_set_resolution(data, seconds);
  if (ret < 0)
   return ret;
  data->wdd.timeout = 60;
 } else {
  ret = fts_read_byte(data->client, FTS_WATCHDOG_CONTROL);
  if (ret < 0)
   return ret;

  data->resolution = ret & BIT(1) ? seconds : minutes;
  data->wdd.timeout = timeout * (u8)data->resolution;
  set_bit(WDOG_HW_RUNNING, &data->wdd.status);
 }


 data->wdd.info = &fts_wd_info;
 data->wdd.ops = &fts_wd_ops;
 data->wdd.parent = &data->client->dev;
 data->wdd.min_timeout = 1;


 data->wdd.max_hw_heartbeat_ms = 0xFF * 60 * MSEC_PER_SEC;

 return watchdog_register_device(&data->wdd);
}

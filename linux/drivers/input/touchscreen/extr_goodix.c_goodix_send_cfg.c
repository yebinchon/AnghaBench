
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct goodix_ts_data {TYPE_2__* client; TYPE_1__* chip; } ;
struct firmware {int size; int data; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int config_addr; } ;


 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int goodix_check_cfg (struct goodix_ts_data*,struct firmware const*) ;
 int goodix_i2c_write (TYPE_2__*,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int goodix_send_cfg(struct goodix_ts_data *ts,
      const struct firmware *cfg)
{
 int error;

 error = goodix_check_cfg(ts, cfg);
 if (error)
  return error;

 error = goodix_i2c_write(ts->client, ts->chip->config_addr, cfg->data,
     cfg->size);
 if (error) {
  dev_err(&ts->client->dev, "Failed to write config data: %d",
   error);
  return error;
 }
 dev_dbg(&ts->client->dev, "Config sent successfully.");


 usleep_range(10000, 11000);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct goodix_ts_data {TYPE_2__* chip; TYPE_1__* client; } ;
struct firmware {scalar_t__ size; } ;
struct TYPE_4__ {int (* check_config ) (struct goodix_ts_data*,struct firmware const*) ;} ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 scalar_t__ GOODIX_CONFIG_MAX_LENGTH ;
 int dev_err (int *,char*) ;
 int stub1 (struct goodix_ts_data*,struct firmware const*) ;

__attribute__((used)) static int goodix_check_cfg(struct goodix_ts_data *ts,
       const struct firmware *cfg)
{
 if (cfg->size > GOODIX_CONFIG_MAX_LENGTH) {
  dev_err(&ts->client->dev,
   "The length of the config fw is not correct");
  return -EINVAL;
 }

 return ts->chip->check_config(ts, cfg);
}

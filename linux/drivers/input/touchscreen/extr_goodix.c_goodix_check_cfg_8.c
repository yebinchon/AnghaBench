
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct goodix_ts_data {TYPE_1__* client; } ;
struct firmware {int size; int* data; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int goodix_check_cfg_8(struct goodix_ts_data *ts,
   const struct firmware *cfg)
{
 int i, raw_cfg_len = cfg->size - 2;
 u8 check_sum = 0;

 for (i = 0; i < raw_cfg_len; i++)
  check_sum += cfg->data[i];
 check_sum = (~check_sum) + 1;
 if (check_sum != cfg->data[raw_cfg_len]) {
  dev_err(&ts->client->dev,
   "The checksum of the config fw is not correct");
  return -EINVAL;
 }

 if (cfg->data[raw_cfg_len + 1] != 1) {
  dev_err(&ts->client->dev,
   "Config fw must have Config_Fresh register set");
  return -EINVAL;
 }

 return 0;
}

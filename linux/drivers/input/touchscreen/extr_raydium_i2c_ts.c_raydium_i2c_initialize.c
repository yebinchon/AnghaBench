
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int main_ver; int sub_ver; int hw_ver; } ;
struct raydium_data {scalar_t__ boot_mode; TYPE_1__ info; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 scalar_t__ RAYDIUM_TS_BLDR ;
 scalar_t__ RAYDIUM_TS_MAIN ;
 int RM_BOOT_DELAY_MS ;
 int RM_MAX_RETRIES ;
 int cpu_to_le32 (int) ;
 int dev_err (int *,char*,int) ;
 int msleep (int ) ;
 int raydium_i2c_check_fw_status (struct raydium_data*) ;
 int raydium_i2c_query_ts_info (struct raydium_data*) ;

__attribute__((used)) static int raydium_i2c_initialize(struct raydium_data *ts)
{
 struct i2c_client *client = ts->client;
 int error, retry_cnt;

 for (retry_cnt = 0; retry_cnt < RM_MAX_RETRIES; retry_cnt++) {

  msleep(RM_BOOT_DELAY_MS);

  error = raydium_i2c_check_fw_status(ts);
  if (error) {
   dev_err(&client->dev,
    "failed to read 'hello' packet: %d\n", error);
   continue;
  }

  if (ts->boot_mode == RAYDIUM_TS_BLDR ||
      ts->boot_mode == RAYDIUM_TS_MAIN) {
   break;
  }
 }

 if (error)
  ts->boot_mode = RAYDIUM_TS_BLDR;

 if (ts->boot_mode == RAYDIUM_TS_BLDR) {
  ts->info.hw_ver = cpu_to_le32(0xffffffffUL);
  ts->info.main_ver = 0xff;
  ts->info.sub_ver = 0xff;
 } else {
  raydium_i2c_query_ts_info(ts);
 }

 return error;
}

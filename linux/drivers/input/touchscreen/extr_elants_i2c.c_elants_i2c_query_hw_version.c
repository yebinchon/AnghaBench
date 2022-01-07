
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct elants_data {int hw_version; struct i2c_client* client; } ;
typedef int resp ;
typedef int cmd ;


 int CMD_HEADER_READ ;
 int EINVAL ;
 int E_ELAN_INFO_FW_ID ;
 int HEADER_SIZE ;
 int MAX_RETRIES ;
 int dev_dbg (int *,char*,int,int,int*) ;
 int dev_err (int *,char*,int) ;
 int elants_i2c_execute_command (struct i2c_client*,int const*,int,int*,int) ;
 int elants_i2c_parse_version (int*) ;

__attribute__((used)) static int elants_i2c_query_hw_version(struct elants_data *ts)
{
 struct i2c_client *client = ts->client;
 int error, retry_cnt;
 const u8 cmd[] = { CMD_HEADER_READ, E_ELAN_INFO_FW_ID, 0x00, 0x01 };
 u8 resp[HEADER_SIZE];

 for (retry_cnt = 0; retry_cnt < MAX_RETRIES; retry_cnt++) {
  error = elants_i2c_execute_command(client, cmd, sizeof(cmd),
         resp, sizeof(resp));
  if (!error) {
   ts->hw_version = elants_i2c_parse_version(resp);
   if (ts->hw_version != 0xffff)
    return 0;
  }

  dev_dbg(&client->dev, "read fw id error=%d, buf=%*phC\n",
   error, (int)sizeof(resp), resp);
 }

 if (error) {
  dev_err(&client->dev,
   "Failed to read fw id: %d\n", error);
  return error;
 }

 dev_err(&client->dev, "Invalid fw id: %#04x\n", ts->hw_version);

 return -EINVAL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int ack_ok ;


 int EIO ;
 int ELAN_FW_PAGESIZE ;
 int MAX_FW_UPDATE_RETRIES ;
 int dev_err (int *,char*,int,...) ;
 int elants_i2c_read (struct i2c_client*,int*,int) ;
 int elants_i2c_send (struct i2c_client*,void const*,int ) ;
 int memcmp (int*,int const*,int) ;

__attribute__((used)) static int elants_i2c_fw_write_page(struct i2c_client *client,
        const void *page)
{
 const u8 ack_ok[] = { 0xaa, 0xaa };
 u8 buf[2];
 int retry;
 int error;

 for (retry = 0; retry < MAX_FW_UPDATE_RETRIES; retry++) {
  error = elants_i2c_send(client, page, ELAN_FW_PAGESIZE);
  if (error) {
   dev_err(&client->dev,
    "IAP Write Page failed: %d\n", error);
   continue;
  }

  error = elants_i2c_read(client, buf, 2);
  if (error) {
   dev_err(&client->dev,
    "IAP Ack read failed: %d\n", error);
   return error;
  }

  if (!memcmp(buf, ack_ok, sizeof(ack_ok)))
   return 0;

  error = -EIO;
  dev_err(&client->dev,
   "IAP Get Ack Error [%02x:%02x]\n",
   buf[0], buf[1]);
 }

 return error;
}

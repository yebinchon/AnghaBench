
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tx_buf ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int WDT_COMMAND_DELAY_MS ;
 int dev_err (int *,char*,int) ;
 int mdelay (int ) ;
 int wdt87xx_i2c_xfer (struct i2c_client*,int*,int,int*,size_t) ;

__attribute__((used)) static int wdt87xx_get_desc(struct i2c_client *client, u8 desc_idx,
       u8 *buf, size_t len)
{
 u8 tx_buf[] = { 0x22, 0x00, 0x10, 0x0E, 0x23, 0x00 };
 int error;

 tx_buf[2] |= desc_idx & 0xF;

 error = wdt87xx_i2c_xfer(client, tx_buf, sizeof(tx_buf),
     buf, len);
 if (error) {
  dev_err(&client->dev, "get desc failed: %d\n", error);
  return error;
 }

 if (buf[0] != len) {
  dev_err(&client->dev, "unexpected response to get desc: %d\n",
   buf[0]);
  return -EINVAL;
 }

 mdelay(WDT_COMMAND_DELAY_MS);

 return 0;
}

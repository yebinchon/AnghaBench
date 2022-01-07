
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef int pkt_buf ;
typedef int cmd_buf ;


 int CMD_BUF_SIZE ;
 size_t CMD_DATA_OFFSET ;
 size_t CMD_REPORT_ID_OFFSET ;
 size_t CMD_TYPE_OFFSET ;
 int DIV_ROUND_UP (int,int) ;
 int PKT_BUF_SIZE ;
 int VND_GET_CHECKSUM ;
 int VND_READ_DATA ;
 int VND_REQ_READ ;
 int VND_SET_CHECKSUM_CALC ;
 int VND_SET_CHECKSUM_LENGTH ;
 int dev_err (int *,char*) ;
 int get_unaligned_le16 (int *) ;
 int memset (int *,int ,int) ;
 int msleep (int) ;
 int wdt87xx_get_feature (struct i2c_client*,int *,int) ;
 int wdt87xx_send_command (struct i2c_client*,int ,int) ;
 int wdt87xx_set_feature (struct i2c_client*,int *,int) ;

__attribute__((used)) static int wdt87xx_get_checksum(struct i2c_client *client, u16 *checksum,
    u32 address, int length)
{
 int error;
 int time_delay;
 u8 pkt_buf[PKT_BUF_SIZE];
 u8 cmd_buf[CMD_BUF_SIZE];

 error = wdt87xx_send_command(client, VND_SET_CHECKSUM_LENGTH, length);
 if (error) {
  dev_err(&client->dev, "failed to set checksum length\n");
  return error;
 }

 error = wdt87xx_send_command(client, VND_SET_CHECKSUM_CALC, address);
 if (error) {
  dev_err(&client->dev, "failed to set checksum address\n");
  return error;
 }


 time_delay = DIV_ROUND_UP(length, 1024);
 msleep(time_delay * 30);

 memset(cmd_buf, 0, sizeof(cmd_buf));
 cmd_buf[CMD_REPORT_ID_OFFSET] = VND_REQ_READ;
 cmd_buf[CMD_TYPE_OFFSET] = VND_GET_CHECKSUM;
 error = wdt87xx_set_feature(client, cmd_buf, sizeof(cmd_buf));
 if (error) {
  dev_err(&client->dev, "failed to request checksum\n");
  return error;
 }

 memset(pkt_buf, 0, sizeof(pkt_buf));
 pkt_buf[CMD_REPORT_ID_OFFSET] = VND_READ_DATA;
 error = wdt87xx_get_feature(client, pkt_buf, sizeof(pkt_buf));
 if (error) {
  dev_err(&client->dev, "failed to read checksum\n");
  return error;
 }

 *checksum = get_unaligned_le16(&pkt_buf[CMD_DATA_OFFSET]);
 return 0;
}

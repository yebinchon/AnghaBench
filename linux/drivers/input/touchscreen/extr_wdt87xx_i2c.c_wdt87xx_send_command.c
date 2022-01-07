
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef int cmd_buf ;


 int CMD_BUF_SIZE ;
 size_t CMD_INDEX_OFFSET ;
 size_t CMD_KEY_OFFSET ;
 size_t CMD_LENGTH_OFFSET ;
 size_t CMD_REPORT_ID_OFFSET ;
 int CMD_SFLCK_KEY ;
 int CMD_SFUNL_KEY ;
 size_t CMD_TYPE_OFFSET ;
 int EINVAL ;






 int VND_REQ_WRITE ;


 int VND_SET_COMMAND_DATA ;
 int dev_err (int *,char*,int) ;
 int put_unaligned_le16 (int ,int *) ;
 int put_unaligned_le32 (int,int *) ;
 int wdt87xx_set_feature (struct i2c_client*,int *,int) ;

__attribute__((used)) static int wdt87xx_send_command(struct i2c_client *client, int cmd, int value)
{
 u8 cmd_buf[CMD_BUF_SIZE];


 cmd_buf[CMD_REPORT_ID_OFFSET] = VND_REQ_WRITE;
 cmd_buf[CMD_TYPE_OFFSET] = VND_SET_COMMAND_DATA;
 put_unaligned_le16((u16)cmd, &cmd_buf[CMD_INDEX_OFFSET]);

 switch (cmd) {
 case 131:
 case 130:
 case 134:

  put_unaligned_le32((value & 0xFF), &cmd_buf[CMD_LENGTH_OFFSET]);
  break;

 case 133:
  put_unaligned_le16(CMD_SFLCK_KEY, &cmd_buf[CMD_KEY_OFFSET]);
  break;

 case 132:
  put_unaligned_le16(CMD_SFUNL_KEY, &cmd_buf[CMD_KEY_OFFSET]);
  break;

 case 135:
 case 129:
 case 128:
  put_unaligned_le32(value, &cmd_buf[CMD_KEY_OFFSET]);
  break;

 default:
  cmd_buf[CMD_REPORT_ID_OFFSET] = 0;
  dev_err(&client->dev, "Invalid command: %d\n", cmd);
  return -EINVAL;
 }

 return wdt87xx_set_feature(client, cmd_buf, sizeof(cmd_buf));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iqs5xx_private {int bl_status; } ;
struct iqs5xx_dev_id_info {scalar_t__ major_ver; int bl_status; int proj_num; int prod_num; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;


 int IQS5XX_END_COMM ;
 scalar_t__ IQS5XX_EVENT_MODE ;
 scalar_t__ IQS5XX_MAJOR_VER_MIN ;
 int IQS5XX_PROD_NUM ;





 scalar_t__ IQS5XX_SETUP_COMPLETE ;
 scalar_t__ IQS5XX_SW_INPUT_EVENT ;
 int IQS5XX_SYS_CFG0 ;
 int IQS5XX_SYS_CFG1 ;
 scalar_t__ IQS5XX_TP_EVENT ;
 int be16_to_cpu (int ) ;
 int dev_err (int *,char*,int) ;
 struct iqs5xx_private* i2c_get_clientdata (struct i2c_client*) ;
 int iqs5xx_axis_init (struct i2c_client*) ;
 int iqs5xx_bl_open (struct i2c_client*) ;
 int iqs5xx_read_burst (struct i2c_client*,int ,scalar_t__*,int) ;
 int iqs5xx_read_byte (struct i2c_client*,int ,scalar_t__*) ;
 int iqs5xx_write_byte (struct i2c_client*,int ,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int iqs5xx_dev_init(struct i2c_client *client)
{
 struct iqs5xx_private *iqs5xx = i2c_get_clientdata(client);
 struct iqs5xx_dev_id_info *dev_id_info;
 int error;
 u8 val;
 u8 buf[sizeof(*dev_id_info) + 1];

 error = iqs5xx_read_burst(client, IQS5XX_PROD_NUM,
      &buf[1], sizeof(*dev_id_info));
 if (error)
  return iqs5xx_bl_open(client);
 buf[0] = 0;
 dev_id_info = (struct iqs5xx_dev_id_info *)&buf[(buf[1] > 0) ? 0 : 1];

 switch (be16_to_cpu(dev_id_info->prod_num)) {
 case 131:
 case 130:
 case 132:
  break;
 default:
  dev_err(&client->dev, "Unrecognized product number: %u\n",
   be16_to_cpu(dev_id_info->prod_num));
  return -EINVAL;
 }

 switch (be16_to_cpu(dev_id_info->proj_num)) {
 case 129:
  dev_err(&client->dev, "Unsupported project number: %u\n",
   be16_to_cpu(dev_id_info->proj_num));
  return iqs5xx_bl_open(client);
 case 128:
  break;
 default:
  dev_err(&client->dev, "Unrecognized project number: %u\n",
   be16_to_cpu(dev_id_info->proj_num));
  return -EINVAL;
 }

 if (dev_id_info->major_ver < IQS5XX_MAJOR_VER_MIN) {
  dev_err(&client->dev, "Unsupported major version: %u\n",
   dev_id_info->major_ver);
  return iqs5xx_bl_open(client);
 }

 switch (dev_id_info->bl_status) {
 case 134:
 case 133:
  break;
 default:
  dev_err(&client->dev,
   "Unrecognized bootloader status: 0x%02X\n",
   dev_id_info->bl_status);
  return -EINVAL;
 }

 error = iqs5xx_axis_init(client);
 if (error)
  return error;

 error = iqs5xx_read_byte(client, IQS5XX_SYS_CFG0, &val);
 if (error)
  return error;

 val |= IQS5XX_SETUP_COMPLETE;
 val &= ~IQS5XX_SW_INPUT_EVENT;
 error = iqs5xx_write_byte(client, IQS5XX_SYS_CFG0, val);
 if (error)
  return error;

 val = IQS5XX_TP_EVENT | IQS5XX_EVENT_MODE;
 error = iqs5xx_write_byte(client, IQS5XX_SYS_CFG1, val);
 if (error)
  return error;

 error = iqs5xx_write_byte(client, IQS5XX_END_COMM, 0);
 if (error)
  return error;

 iqs5xx->bl_status = dev_id_info->bl_status;
 msleep(100);

 return 0;
}

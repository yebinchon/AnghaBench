
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct a8293_dev* sec_priv; } ;
struct a8293_dev {void** reg; struct i2c_client* client; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int EINVAL ;



 int dev_dbg (int *,char*,int) ;
 int i2c_master_send (struct i2c_client*,void**,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int a8293_set_voltage(struct dvb_frontend *fe,
        enum fe_sec_voltage fe_sec_voltage)
{
 struct a8293_dev *dev = fe->sec_priv;
 struct i2c_client *client = dev->client;
 int ret;
 u8 reg0, reg1;

 dev_dbg(&client->dev, "fe_sec_voltage=%d\n", fe_sec_voltage);

 switch (fe_sec_voltage) {
 case 128:

  reg0 = 0x10;
  break;
 case 130:

  reg0 = 0x31;
  break;
 case 129:

  reg0 = 0x38;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }
 if (reg0 != dev->reg[0]) {
  ret = i2c_master_send(client, &reg0, 1);
  if (ret < 0)
   goto err;
  dev->reg[0] = reg0;
 }


 reg1 = 0x82;
 if (reg1 != dev->reg[1]) {
  ret = i2c_master_send(client, &reg1, 1);
  if (ret < 0)
   goto err;
  dev->reg[1] = reg1;
 }

 usleep_range(1500, 50000);
 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}

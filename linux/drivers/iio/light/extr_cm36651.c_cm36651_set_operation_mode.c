
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct cm36651_data {int* cs_ctrl_regs; int* ps_ctrl_regs; int flags; struct i2c_client* ps_client; struct i2c_client* client; } ;






 size_t CM36651_CS_CONF1 ;
 int CM36651_PROXIMITY_EV_EN ;
 size_t CM36651_PS_CONF1 ;
 int CM36651_PS_DISABLE ;
 int CM36651_PS_INT_EN ;
 int CM36651_PS_IT2 ;
 int CM36651_PS_PERS2 ;
 int EINVAL ;
 int clear_bit (int,int *) ;
 size_t* cm36651_ps_reg ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,size_t,int) ;
 int set_bit (int,int *) ;
 int test_bit (int,int *) ;

__attribute__((used)) static int cm36651_set_operation_mode(struct cm36651_data *cm36651, int cmd)
{
 struct i2c_client *client = cm36651->client;
 struct i2c_client *ps_client = cm36651->ps_client;
 int ret = -EINVAL;

 switch (cmd) {
 case 129:
  ret = i2c_smbus_write_byte_data(client, CM36651_CS_CONF1,
    cm36651->cs_ctrl_regs[CM36651_CS_CONF1]);
  break;
 case 128:
  if (test_bit(CM36651_PROXIMITY_EV_EN, &cm36651->flags))
   return CM36651_PROXIMITY_EV_EN;

  ret = i2c_smbus_write_byte_data(ps_client, CM36651_PS_CONF1,
    cm36651->ps_ctrl_regs[CM36651_PS_CONF1]);
  break;
 case 130:
  if (test_bit(CM36651_PROXIMITY_EV_EN, &cm36651->flags)) {
   dev_err(&client->dev,
    "Already proximity event enable state\n");
   return ret;
  }
  set_bit(CM36651_PROXIMITY_EV_EN, &cm36651->flags);

  ret = i2c_smbus_write_byte_data(ps_client,
   cm36651_ps_reg[CM36651_PS_CONF1],
   CM36651_PS_INT_EN | CM36651_PS_PERS2 | CM36651_PS_IT2);

  if (ret < 0) {
   dev_err(&client->dev, "Proximity enable event failed\n");
   return ret;
  }
  break;
 case 131:
  if (!test_bit(CM36651_PROXIMITY_EV_EN, &cm36651->flags)) {
   dev_err(&client->dev,
    "Already proximity event disable state\n");
   return ret;
  }
  clear_bit(CM36651_PROXIMITY_EV_EN, &cm36651->flags);
  ret = i2c_smbus_write_byte_data(ps_client,
     CM36651_PS_CONF1, CM36651_PS_DISABLE);
  break;
 }

 if (ret < 0)
  dev_err(&client->dev, "Write register failed\n");

 return ret;
}

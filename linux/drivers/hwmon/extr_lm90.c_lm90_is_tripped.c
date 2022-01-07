
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lm90_data {scalar_t__ kind; } ;
struct i2c_client {int dev; } ;


 int LM90_REG_R_STATUS ;
 int LM90_STATUS_LHIGH ;
 int LM90_STATUS_LLOW ;
 int LM90_STATUS_LTHRM ;
 int LM90_STATUS_RHIGH ;
 int LM90_STATUS_RLOW ;
 int LM90_STATUS_ROPEN ;
 int LM90_STATUS_RTHRM ;
 int MAX6696_REG_R_STATUS2 ;
 int MAX6696_STATUS2_LOT2 ;
 int MAX6696_STATUS2_R2HIGH ;
 int MAX6696_STATUS2_R2LOW ;
 int MAX6696_STATUS2_R2OPEN ;
 int MAX6696_STATUS2_R2OT2 ;
 int MAX6696_STATUS2_R2THRM ;
 int MAX6696_STATUS2_ROT2 ;
 int dev_warn (int *,char*,int) ;
 struct lm90_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm90_read_reg (struct i2c_client*,int ) ;
 scalar_t__ max6696 ;

__attribute__((used)) static bool lm90_is_tripped(struct i2c_client *client, u16 *status)
{
 struct lm90_data *data = i2c_get_clientdata(client);
 int st, st2 = 0;

 st = lm90_read_reg(client, LM90_REG_R_STATUS);
 if (st < 0)
  return 0;

 if (data->kind == max6696) {
  st2 = lm90_read_reg(client, MAX6696_REG_R_STATUS2);
  if (st2 < 0)
   return 0;
 }

 *status = st | (st2 << 8);

 if ((st & 0x7f) == 0 && (st2 & 0xfe) == 0)
  return 0;

 if ((st & (LM90_STATUS_LLOW | LM90_STATUS_LHIGH | LM90_STATUS_LTHRM)) ||
     (st2 & MAX6696_STATUS2_LOT2))
  dev_warn(&client->dev,
    "temp%d out of range, please check!\n", 1);
 if ((st & (LM90_STATUS_RLOW | LM90_STATUS_RHIGH | LM90_STATUS_RTHRM)) ||
     (st2 & MAX6696_STATUS2_ROT2))
  dev_warn(&client->dev,
    "temp%d out of range, please check!\n", 2);
 if (st & LM90_STATUS_ROPEN)
  dev_warn(&client->dev,
    "temp%d diode open, please check!\n", 2);
 if (st2 & (MAX6696_STATUS2_R2LOW | MAX6696_STATUS2_R2HIGH |
     MAX6696_STATUS2_R2THRM | MAX6696_STATUS2_R2OT2))
  dev_warn(&client->dev,
    "temp%d out of range, please check!\n", 3);
 if (st2 & MAX6696_STATUS2_R2OPEN)
  dev_warn(&client->dev,
    "temp%d diode open, please check!\n", 3);

 return 1;
}

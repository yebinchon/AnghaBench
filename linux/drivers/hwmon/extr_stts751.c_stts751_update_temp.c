
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stts751_priv {int temp; TYPE_1__* client; } ;
typedef int s32 ;
struct TYPE_2__ {int dev; } ;


 int STTS751_REG_TEMP_H ;
 int STTS751_REG_TEMP_L ;
 int dev_dbg (int *,char*,int) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int stts751_to_deg (int) ;

__attribute__((used)) static int stts751_update_temp(struct stts751_priv *priv)
{
 s32 integer1, integer2, frac;
 integer1 = i2c_smbus_read_byte_data(priv->client, STTS751_REG_TEMP_H);
 if (integer1 < 0) {
  dev_dbg(&priv->client->dev,
   "I2C read failed (temp H). ret: %x\n", integer1);
  return integer1;
 }

 frac = i2c_smbus_read_byte_data(priv->client, STTS751_REG_TEMP_L);
 if (frac < 0) {
  dev_dbg(&priv->client->dev,
   "I2C read failed (temp L). ret: %x\n", frac);
  return frac;
 }

 integer2 = i2c_smbus_read_byte_data(priv->client, STTS751_REG_TEMP_H);
 if (integer2 < 0) {
  dev_dbg(&priv->client->dev,
   "I2C 2nd read failed (temp H). ret: %x\n", integer2);
  return integer2;
 }

 if (integer1 != integer2) {
  frac = i2c_smbus_read_byte_data(priv->client,
      STTS751_REG_TEMP_L);
  if (frac < 0) {
   dev_dbg(&priv->client->dev,
    "I2C 2nd read failed (temp L). ret: %x\n",
    frac);
   return frac;
  }
 }

 priv->temp = stts751_to_deg((integer1 << 8) | frac);
 return 0;
}

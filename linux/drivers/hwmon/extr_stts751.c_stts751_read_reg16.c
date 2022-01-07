
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stts751_priv {int client; } ;


 int i2c_smbus_read_byte_data (int ,int ) ;
 int stts751_to_deg (int) ;

__attribute__((used)) static int stts751_read_reg16(struct stts751_priv *priv, int *temp,
         u8 hreg, u8 lreg)
{
 int integer, frac;

 integer = i2c_smbus_read_byte_data(priv->client, hreg);
 if (integer < 0)
  return integer;

 frac = i2c_smbus_read_byte_data(priv->client, lreg);
 if (frac < 0)
  return frac;

 *temp = stts751_to_deg((integer << 8) | frac);

 return 0;
}

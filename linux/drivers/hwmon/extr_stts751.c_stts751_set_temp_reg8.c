
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stts751_priv {int client; } ;
typedef int s32 ;


 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int stts751_to_hw (int) ;

__attribute__((used)) static int stts751_set_temp_reg8(struct stts751_priv *priv, int temp, u8 reg)
{
 s32 hwval;

 hwval = stts751_to_hw(temp);
 return i2c_smbus_write_byte_data(priv->client, reg, hwval >> 8);
}

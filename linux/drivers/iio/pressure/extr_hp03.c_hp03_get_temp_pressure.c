
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hp03_priv {int client; } ;


 int HP03_ADC_READ_REG ;
 int HP03_ADC_WRITE_REG ;
 int i2c_smbus_read_word_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int const) ;
 int msleep (int) ;

__attribute__((used)) static int hp03_get_temp_pressure(struct hp03_priv *priv, const u8 reg)
{
 int ret;

 ret = i2c_smbus_write_byte_data(priv->client, HP03_ADC_WRITE_REG, reg);
 if (ret < 0)
  return ret;

 msleep(50);

 return i2c_smbus_read_word_data(priv->client, HP03_ADC_READ_REG);
}

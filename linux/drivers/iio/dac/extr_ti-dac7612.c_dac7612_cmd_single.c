
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dac7612 {int* data; int* cache; int loaddacs; int spi; } ;


 int BIT (int ) ;
 int DAC7612_ADDRESS ;
 int DAC7612_START ;
 int gpiod_set_value (int ,int) ;
 int spi_write (int ,int*,int) ;

__attribute__((used)) static int dac7612_cmd_single(struct dac7612 *priv, int channel, u16 val)
{
 int ret;

 priv->data[0] = BIT(DAC7612_START) | (channel << DAC7612_ADDRESS);
 priv->data[0] |= val >> 8;
 priv->data[1] = val & 0xff;

 priv->cache[channel] = val;

 ret = spi_write(priv->spi, priv->data, sizeof(priv->data));
 if (ret)
  return ret;

 gpiod_set_value(priv->loaddacs, 1);
 gpiod_set_value(priv->loaddacs, 0);

 return 0;
}

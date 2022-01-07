
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int* rx_buf; int len; int bits_per_word; } ;
struct spi_message {int dummy; } ;
struct ad7949_adc_chip {int buffer; unsigned int current_channel; int spi; int resolution; } ;


 int AD7949_CFG_REG_SIZE_BITS ;
 int AD7949_MASK_CHANNEL_SEL ;
 unsigned int AD7949_OFFSET_CHANNEL_SEL ;
 int GENMASK (int ,int ) ;
 int ad7949_spi_bits_per_word (struct ad7949_adc_chip*) ;
 scalar_t__ ad7949_spi_cfg_is_read_back (struct ad7949_adc_chip*) ;
 int ad7949_spi_write_cfg (struct ad7949_adc_chip*,unsigned int,int ) ;
 int spi_message_init_with_transfers (struct spi_message*,struct spi_transfer*,int) ;
 int spi_sync (int ,struct spi_message*) ;
 int udelay (int) ;

__attribute__((used)) static int ad7949_spi_read_channel(struct ad7949_adc_chip *ad7949_adc, int *val,
       unsigned int channel)
{
 int ret;
 int bits_per_word = ad7949_spi_bits_per_word(ad7949_adc);
 int mask = GENMASK(ad7949_adc->resolution, 0);
 struct spi_message msg;
 struct spi_transfer tx[] = {
  {
   .rx_buf = &ad7949_adc->buffer,
   .len = 4,
   .bits_per_word = bits_per_word,
  },
 };

 ret = ad7949_spi_write_cfg(ad7949_adc,
       channel << AD7949_OFFSET_CHANNEL_SEL,
       AD7949_MASK_CHANNEL_SEL);
 if (ret)
  return ret;

 ad7949_adc->buffer = 0;
 spi_message_init_with_transfers(&msg, tx, 1);
 ret = spi_sync(ad7949_adc->spi, &msg);
 if (ret)
  return ret;





 udelay(2);

 ad7949_adc->current_channel = channel;

 if (ad7949_spi_cfg_is_read_back(ad7949_adc))
  *val = (ad7949_adc->buffer >> AD7949_CFG_REG_SIZE_BITS) & mask;
 else
  *val = ad7949_adc->buffer & mask;

 return 0;
}

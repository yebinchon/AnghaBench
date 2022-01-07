
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_transfer {int* tx_buf; int len; int bits_per_word; } ;
struct spi_message {int dummy; } ;
struct ad7949_adc_chip {int buffer; int cfg; int spi; } ;


 int AD7949_CFG_REG_SIZE_BITS ;
 int ad7949_spi_bits_per_word (struct ad7949_adc_chip*) ;
 int spi_message_init_with_transfers (struct spi_message*,struct spi_transfer*,int) ;
 int spi_sync (int ,struct spi_message*) ;
 int udelay (int) ;

__attribute__((used)) static int ad7949_spi_write_cfg(struct ad7949_adc_chip *ad7949_adc, u16 val,
    u16 mask)
{
 int ret;
 int bits_per_word = ad7949_spi_bits_per_word(ad7949_adc);
 int shift = bits_per_word - AD7949_CFG_REG_SIZE_BITS;
 struct spi_message msg;
 struct spi_transfer tx[] = {
  {
   .tx_buf = &ad7949_adc->buffer,
   .len = 4,
   .bits_per_word = bits_per_word,
  },
 };

 ad7949_adc->cfg = (val & mask) | (ad7949_adc->cfg & ~mask);
 ad7949_adc->buffer = ad7949_adc->cfg << shift;
 spi_message_init_with_transfers(&msg, tx, 1);
 ret = spi_sync(ad7949_adc->spi, &msg);





 udelay(2);
 return ret;
}

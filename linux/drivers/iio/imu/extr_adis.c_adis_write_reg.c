
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_transfer {unsigned int* tx_buf; int bits_per_word; int len; int cs_change; int delay_usecs; int cs_change_delay_unit; int cs_change_delay; } ;
struct spi_message {int dummy; } ;
struct adis {unsigned int* tx; unsigned int current_page; int txrx_lock; TYPE_2__* spi; TYPE_1__* data; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int write_delay; int cs_change_delay; } ;


 unsigned int ADIS_PAGE_SIZE ;
 unsigned int ADIS_REG_PAGE_ID ;
 void* ADIS_WRITE_REG (unsigned int) ;
 int EINVAL ;
 int SPI_DELAY_UNIT_USECS ;
 int dev_err (int *,char*,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_2__*,struct spi_message*) ;

int adis_write_reg(struct adis *adis, unsigned int reg,
 unsigned int value, unsigned int size)
{
 unsigned int page = reg / ADIS_PAGE_SIZE;
 int ret, i;
 struct spi_message msg;
 struct spi_transfer xfers[] = {
  {
   .tx_buf = adis->tx,
   .bits_per_word = 8,
   .len = 2,
   .cs_change = 1,
   .delay_usecs = adis->data->write_delay,
   .cs_change_delay = adis->data->cs_change_delay,
   .cs_change_delay_unit = SPI_DELAY_UNIT_USECS,
  }, {
   .tx_buf = adis->tx + 2,
   .bits_per_word = 8,
   .len = 2,
   .cs_change = 1,
   .delay_usecs = adis->data->write_delay,
   .cs_change_delay = adis->data->cs_change_delay,
   .cs_change_delay_unit = SPI_DELAY_UNIT_USECS,
  }, {
   .tx_buf = adis->tx + 4,
   .bits_per_word = 8,
   .len = 2,
   .cs_change = 1,
   .delay_usecs = adis->data->write_delay,
   .cs_change_delay = adis->data->cs_change_delay,
   .cs_change_delay_unit = SPI_DELAY_UNIT_USECS,
  }, {
   .tx_buf = adis->tx + 6,
   .bits_per_word = 8,
   .len = 2,
   .delay_usecs = adis->data->write_delay,
  }, {
   .tx_buf = adis->tx + 8,
   .bits_per_word = 8,
   .len = 2,
   .delay_usecs = adis->data->write_delay,
  },
 };

 mutex_lock(&adis->txrx_lock);

 spi_message_init(&msg);

 if (adis->current_page != page) {
  adis->tx[0] = ADIS_WRITE_REG(ADIS_REG_PAGE_ID);
  adis->tx[1] = page;
  spi_message_add_tail(&xfers[0], &msg);
 }

 switch (size) {
 case 4:
  adis->tx[8] = ADIS_WRITE_REG(reg + 3);
  adis->tx[9] = (value >> 24) & 0xff;
  adis->tx[6] = ADIS_WRITE_REG(reg + 2);
  adis->tx[7] = (value >> 16) & 0xff;

 case 2:
  adis->tx[4] = ADIS_WRITE_REG(reg + 1);
  adis->tx[5] = (value >> 8) & 0xff;

 case 1:
  adis->tx[2] = ADIS_WRITE_REG(reg);
  adis->tx[3] = value & 0xff;
  break;
 default:
  ret = -EINVAL;
  goto out_unlock;
 }

 xfers[size].cs_change = 0;

 for (i = 1; i <= size; i++)
  spi_message_add_tail(&xfers[i], &msg);

 ret = spi_sync(adis->spi, &msg);
 if (ret) {
  dev_err(&adis->spi->dev, "Failed to write register 0x%02X: %d\n",
    reg, ret);
 } else {
  adis->current_page = page;
 }

out_unlock:
 mutex_unlock(&adis->txrx_lock);

 return ret;
}

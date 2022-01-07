
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_transfer {unsigned int* tx_buf; int bits_per_word; int len; int cs_change; int delay_usecs; int rx_buf; int cs_change_delay_unit; int cs_change_delay; } ;
struct spi_message {int dummy; } ;
struct adis {unsigned int* tx; unsigned int current_page; int txrx_lock; int rx; TYPE_2__* spi; TYPE_1__* data; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int read_delay; int cs_change_delay; int write_delay; } ;


 unsigned int ADIS_PAGE_SIZE ;
 void* ADIS_READ_REG (unsigned int) ;
 int ADIS_REG_PAGE_ID ;
 unsigned int ADIS_WRITE_REG (int ) ;
 int EINVAL ;
 int SPI_DELAY_UNIT_USECS ;
 int dev_err (int *,char*,unsigned int,int) ;
 unsigned int get_unaligned_be16 (int ) ;
 unsigned int get_unaligned_be32 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_2__*,struct spi_message*) ;

int adis_read_reg(struct adis *adis, unsigned int reg,
 unsigned int *val, unsigned int size)
{
 unsigned int page = reg / ADIS_PAGE_SIZE;
 struct spi_message msg;
 int ret;
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
   .delay_usecs = adis->data->read_delay,
   .cs_change_delay = adis->data->cs_change_delay,
   .cs_change_delay_unit = SPI_DELAY_UNIT_USECS,
  }, {
   .tx_buf = adis->tx + 4,
   .rx_buf = adis->rx,
   .bits_per_word = 8,
   .len = 2,
   .cs_change = 1,
   .delay_usecs = adis->data->read_delay,
   .cs_change_delay = adis->data->cs_change_delay,
   .cs_change_delay_unit = SPI_DELAY_UNIT_USECS,
  }, {
   .rx_buf = adis->rx + 2,
   .bits_per_word = 8,
   .len = 2,
   .delay_usecs = adis->data->read_delay,
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
  adis->tx[2] = ADIS_READ_REG(reg + 2);
  adis->tx[3] = 0;
  spi_message_add_tail(&xfers[1], &msg);

 case 2:
  adis->tx[4] = ADIS_READ_REG(reg);
  adis->tx[5] = 0;
  spi_message_add_tail(&xfers[2], &msg);
  spi_message_add_tail(&xfers[3], &msg);
  break;
 default:
  ret = -EINVAL;
  goto out_unlock;
 }

 ret = spi_sync(adis->spi, &msg);
 if (ret) {
  dev_err(&adis->spi->dev, "Failed to read register 0x%02X: %d\n",
    reg, ret);
  goto out_unlock;
 } else {
  adis->current_page = page;
 }

 switch (size) {
 case 4:
  *val = get_unaligned_be32(adis->rx);
  break;
 case 2:
  *val = get_unaligned_be16(adis->rx + 2);
  break;
 }

out_unlock:
 mutex_unlock(&adis->txrx_lock);

 return ret;
}

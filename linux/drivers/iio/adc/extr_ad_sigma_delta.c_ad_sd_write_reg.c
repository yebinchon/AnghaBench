
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct spi_transfer {unsigned int* tx_buf; unsigned int len; int cs_change; } ;
struct spi_message {int dummy; } ;
struct ad_sigma_delta {unsigned int* data; unsigned int comm; int spi; scalar_t__ bus_locked; TYPE_1__* info; int keep_cs_asserted; } ;
struct TYPE_2__ {unsigned int addr_shift; } ;


 int EINVAL ;
 int put_unaligned_be16 (unsigned int,unsigned int*) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int spi_sync_locked (int ,struct spi_message*) ;

int ad_sd_write_reg(struct ad_sigma_delta *sigma_delta, unsigned int reg,
 unsigned int size, unsigned int val)
{
 uint8_t *data = sigma_delta->data;
 struct spi_transfer t = {
  .tx_buf = data,
  .len = size + 1,
  .cs_change = sigma_delta->keep_cs_asserted,
 };
 struct spi_message m;
 int ret;

 data[0] = (reg << sigma_delta->info->addr_shift) | sigma_delta->comm;

 switch (size) {
 case 3:
  data[1] = val >> 16;
  data[2] = val >> 8;
  data[3] = val;
  break;
 case 2:
  put_unaligned_be16(val, &data[1]);
  break;
 case 1:
  data[1] = val;
  break;
 case 0:
  break;
 default:
  return -EINVAL;
 }

 spi_message_init(&m);
 spi_message_add_tail(&t, &m);

 if (sigma_delta->bus_locked)
  ret = spi_sync_locked(sigma_delta->spi, &m);
 else
  ret = spi_sync(sigma_delta->spi, &m);

 return ret;
}

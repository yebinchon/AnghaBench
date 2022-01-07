
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int tx ;
struct spi_transfer {scalar_t__ len; int const* tx_buf; } ;
struct spi_message {int dummy; } ;
struct cxd2880_spi_device {int spi; } ;
struct cxd2880_spi {struct cxd2880_spi_device* user; } ;


 int EINVAL ;
 int EIO ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int cxd2880_spi_device_write(struct cxd2880_spi *spi,
        const u8 *data, u32 size)
{
 struct cxd2880_spi_device *spi_device = ((void*)0);
 struct spi_message msg;
 struct spi_transfer tx;
 int result = 0;

 if (!spi || !spi->user || !data || size == 0)
  return -EINVAL;

 spi_device = spi->user;

 memset(&tx, 0, sizeof(tx));
 tx.tx_buf = data;
 tx.len = size;

 spi_message_init(&msg);
 spi_message_add_tail(&tx, &msg);
 result = spi_sync(spi_device->spi, &msg);

 if (result < 0)
  return -EIO;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cxd2880_spi_device {int spi; } ;
struct cxd2880_spi {struct cxd2880_spi_device* user; } ;


 int EINVAL ;
 int EIO ;
 int spi_write_then_read (int ,int const*,int ,int *,int ) ;

__attribute__((used)) static int cxd2880_spi_device_write_read(struct cxd2880_spi *spi,
      const u8 *tx_data,
      u32 tx_size,
      u8 *rx_data,
      u32 rx_size)
{
 struct cxd2880_spi_device *spi_device = ((void*)0);
 int result = 0;

 if (!spi || !spi->user || !tx_data ||
     !tx_size || !rx_data || !rx_size)
  return -EINVAL;

 spi_device = spi->user;

 result = spi_write_then_read(spi_device->spi, tx_data,
         tx_size, rx_data, rx_size);
 if (result < 0)
  return -EIO;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_spi_device {int dummy; } ;
struct cxd2880_spi {struct cxd2880_spi_device* user; scalar_t__ flags; int write_read; int write; int * read; } ;


 int EINVAL ;
 int cxd2880_spi_device_write ;
 int cxd2880_spi_device_write_read ;

int cxd2880_spi_device_create_spi(struct cxd2880_spi *spi,
      struct cxd2880_spi_device *spi_device)
{
 if (!spi || !spi_device)
  return -EINVAL;

 spi->read = ((void*)0);
 spi->write = cxd2880_spi_device_write;
 spi->write_read = cxd2880_spi_device_write_read;
 spi->flags = 0;
 spi->user = spi_device;

 return 0;
}

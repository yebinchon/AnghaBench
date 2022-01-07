
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_spi {int dummy; } ;
struct cxd2880_io {int slave_select; scalar_t__ i2c_address_demod; scalar_t__ i2c_address_sys; struct cxd2880_spi* if_object; int write_reg; int write_regs; int read_regs; } ;


 int EINVAL ;
 int cxd2880_io_common_write_one_reg ;
 int cxd2880_io_spi_read_reg ;
 int cxd2880_io_spi_write_reg ;

int cxd2880_io_spi_create(struct cxd2880_io *io,
     struct cxd2880_spi *spi, u8 slave_select)
{
 if (!io || !spi)
  return -EINVAL;

 io->read_regs = cxd2880_io_spi_read_reg;
 io->write_regs = cxd2880_io_spi_write_reg;
 io->write_reg = cxd2880_io_common_write_one_reg;
 io->if_object = spi;
 io->i2c_address_sys = 0;
 io->i2c_address_demod = 0;
 io->slave_select = slave_select;

 return 0;
}

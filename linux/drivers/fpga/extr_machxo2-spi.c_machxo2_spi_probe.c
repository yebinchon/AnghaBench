
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct spi_device {scalar_t__ max_speed_hz; struct device dev; } ;
struct fpga_manager {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ MACHXO2_MAX_SPEED ;
 int dev_err (struct device*,char*) ;
 struct fpga_manager* devm_fpga_mgr_create (struct device*,char*,int *,struct spi_device*) ;
 int fpga_mgr_register (struct fpga_manager*) ;
 int machxo2_ops ;
 int spi_set_drvdata (struct spi_device*,struct fpga_manager*) ;

__attribute__((used)) static int machxo2_spi_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct fpga_manager *mgr;

 if (spi->max_speed_hz > MACHXO2_MAX_SPEED) {
  dev_err(dev, "Speed is too high\n");
  return -EINVAL;
 }

 mgr = devm_fpga_mgr_create(dev, "Lattice MachXO2 SPI FPGA Manager",
       &machxo2_ops, spi);
 if (!mgr)
  return -ENOMEM;

 spi_set_drvdata(spi, mgr);

 return fpga_mgr_register(mgr);
}

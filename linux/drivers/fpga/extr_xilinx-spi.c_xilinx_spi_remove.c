
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct fpga_manager {int dummy; } ;


 int fpga_mgr_unregister (struct fpga_manager*) ;
 struct fpga_manager* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int xilinx_spi_remove(struct spi_device *spi)
{
 struct fpga_manager *mgr = spi_get_drvdata(spi);

 fpga_mgr_unregister(mgr);

 return 0;
}

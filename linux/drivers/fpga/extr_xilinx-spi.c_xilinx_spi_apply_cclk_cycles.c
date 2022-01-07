
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xilinx_spi_conf {struct spi_device* spi; } ;
struct spi_device {int dev; } ;
typedef int din_data ;


 int dev_err (int *,char*,int) ;
 int spi_write (struct spi_device*,int const*,int) ;

__attribute__((used)) static int xilinx_spi_apply_cclk_cycles(struct xilinx_spi_conf *conf)
{
 struct spi_device *spi = conf->spi;
 const u8 din_data[1] = { 0xff };
 int ret;

 ret = spi_write(conf->spi, din_data, sizeof(din_data));
 if (ret)
  dev_err(&spi->dev, "applying CCLK cycles failed: %d\n", ret);

 return ret;
}

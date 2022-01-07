
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int BMA220_REG_SUSPEND ;
 int BMA220_SUSPEND_SLEEP ;
 int bma220_read_reg (struct spi_device*,int ) ;

__attribute__((used)) static int bma220_deinit(struct spi_device *spi)
{
 int ret;


 ret = bma220_read_reg(spi, BMA220_REG_SUSPEND);
 if (ret < 0)
  return ret;
 else if (ret == BMA220_SUSPEND_SLEEP)
  return bma220_read_reg(spi, BMA220_REG_SUSPEND);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct adis {int dummy; } ;


 int ADIS16480_DRDY_EN (int) ;
 int ADIS16480_DRDY_EN_MSK ;
 int ADIS16480_REG_FNCTIO_CTRL ;
 int adis_read_reg_16 (struct adis*,int ,int *) ;
 int adis_write_reg_16 (struct adis*,int ,int ) ;

__attribute__((used)) static int adis16480_enable_irq(struct adis *adis, bool enable)
{
 uint16_t val;
 int ret;

 ret = adis_read_reg_16(adis, ADIS16480_REG_FNCTIO_CTRL, &val);
 if (ret < 0)
  return ret;

 val &= ~ADIS16480_DRDY_EN_MSK;
 val |= ADIS16480_DRDY_EN(enable);

 return adis_write_reg_16(adis, ADIS16480_REG_FNCTIO_CTRL, val);
}

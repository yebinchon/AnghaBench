
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ad5592r_state {int gpio_in; int spi_msg; } ;


 int AD5592R_GPIO_READBACK_EN ;
 int AD5592R_REG_GPIO_IN_EN ;
 int ad5592r_reg_write (struct ad5592r_state*,int ,int) ;
 int ad5592r_spi_wnop_r16 (struct ad5592r_state*,int *) ;
 scalar_t__ be16_to_cpu (int ) ;

__attribute__((used)) static int ad5593r_gpio_read(struct ad5592r_state *st, u8 *value)
{
 int ret;

 ret = ad5592r_reg_write(st, AD5592R_REG_GPIO_IN_EN,
    AD5592R_GPIO_READBACK_EN | st->gpio_in);
 if (ret)
  return ret;

 ret = ad5592r_spi_wnop_r16(st, &st->spi_msg);
 if (ret)
  return ret;

 *value = (u8) be16_to_cpu(st->spi_msg);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7768_state {int gpio_sync_in; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int AD7768_REG_SYNC_RESET ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ad7768_set_freq (struct ad7768_state*,int) ;
 int ad7768_spi_reg_write (struct ad7768_state*,int ,int) ;
 int devm_gpiod_get (int *,char*,int ) ;

__attribute__((used)) static int ad7768_setup(struct ad7768_state *st)
{
 int ret;







 ret = ad7768_spi_reg_write(st, AD7768_REG_SYNC_RESET, 0x3);
 if (ret)
  return ret;

 ret = ad7768_spi_reg_write(st, AD7768_REG_SYNC_RESET, 0x2);
 if (ret)
  return ret;

 st->gpio_sync_in = devm_gpiod_get(&st->spi->dev, "adi,sync-in",
       GPIOD_OUT_LOW);
 if (IS_ERR(st->gpio_sync_in))
  return PTR_ERR(st->gpio_sync_in);


 return ad7768_set_freq(st, 32000);
}

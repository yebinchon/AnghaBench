
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pisosr_gpio {int lock; int buffer_size; int buffer; int spi; scalar_t__ load_gpio; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_read (int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pisosr_gpio_refresh(struct pisosr_gpio *gpio)
{
 int ret;

 mutex_lock(&gpio->lock);

 if (gpio->load_gpio) {
  gpiod_set_value_cansleep(gpio->load_gpio, 1);
  udelay(1);
  gpiod_set_value_cansleep(gpio->load_gpio, 0);
  udelay(1);
 }

 ret = spi_read(gpio->spi, gpio->buffer, gpio->buffer_size);

 mutex_unlock(&gpio->lock);

 return ret;
}

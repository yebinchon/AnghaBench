
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_gpio {int dummy; } ;


 int WARN_RATELIMIT (int,char*,unsigned int) ;
 int thunderx_gpio_is_gpio_nowarn (struct thunderx_gpio*,unsigned int) ;

__attribute__((used)) static bool thunderx_gpio_is_gpio(struct thunderx_gpio *txgpio,
      unsigned int line)
{
 bool rv = thunderx_gpio_is_gpio_nowarn(txgpio, line);

 WARN_RATELIMIT(!rv, "Pin %d not available for GPIO\n", line);

 return rv;
}

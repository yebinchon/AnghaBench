
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ base; int gpios; } ;
struct TYPE_4__ {int ngpio; struct device* parent; } ;


 int BIT (int) ;
 int EINVAL ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,scalar_t__*) ;
 int hweight_long (int) ;
 TYPE_2__ params ;
 TYPE_1__ winbond_gpio_chip ;
 int winbond_gpio_configure (scalar_t__) ;
 int winbond_sio_enter (scalar_t__) ;
 int winbond_sio_leave (scalar_t__) ;

__attribute__((used)) static int winbond_gpio_iprobe(struct device *dev, unsigned int id)
{
 int ret;

 if (params.base == 0)
  return -EINVAL;

 ret = winbond_sio_enter(params.base);
 if (ret)
  return ret;

 ret = winbond_gpio_configure(params.base);

 winbond_sio_leave(params.base);

 if (ret)
  return ret;






 winbond_gpio_chip.ngpio = hweight_long(params.gpios) * 8;





 if (params.gpios & BIT(5))
  winbond_gpio_chip.ngpio -= (8 - 5);

 winbond_gpio_chip.parent = dev;

 return devm_gpiochip_add_data(dev, &winbond_gpio_chip, &params.base);
}

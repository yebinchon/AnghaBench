
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_bank {int dummy; } ;


 int omap_mpuio_device ;
 int omap_mpuio_driver ;
 int platform_device_register (int *) ;
 scalar_t__ platform_driver_register (int *) ;
 int platform_set_drvdata (int *,struct gpio_bank*) ;

__attribute__((used)) static inline void omap_mpuio_init(struct gpio_bank *bank)
{
 platform_set_drvdata(&omap_mpuio_device, bank);

 if (platform_driver_register(&omap_mpuio_driver) == 0)
  (void) platform_device_register(&omap_mpuio_device);
}

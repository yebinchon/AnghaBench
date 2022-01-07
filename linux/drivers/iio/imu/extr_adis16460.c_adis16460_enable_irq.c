
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adis {TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static int adis16460_enable_irq(struct adis *adis, bool enable)
{




 if (enable)
  enable_irq(adis->spi->irq);
 else
  disable_irq(adis->spi->irq);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ngpio; } ;
struct lp_gpio {TYPE_1__ chip; } ;
struct device {int dummy; } ;


 int GPINDIS_BIT ;
 int LP_CONFIG2 ;
 struct lp_gpio* dev_get_drvdata (struct device*) ;
 int * gpiochip_is_requested (TYPE_1__*,int) ;
 int inl (unsigned long) ;
 unsigned long lp_gpio_reg (TYPE_1__*,int,int ) ;
 int outl (int,unsigned long) ;

__attribute__((used)) static int lp_gpio_resume(struct device *dev)
{
 struct lp_gpio *lg = dev_get_drvdata(dev);
 unsigned long reg;
 int i;


 for (i = 0; i < lg->chip.ngpio; i++) {
  if (gpiochip_is_requested(&lg->chip, i) != ((void*)0)) {
   reg = lp_gpio_reg(&lg->chip, i, LP_CONFIG2);
   outl(inl(reg) & ~GPINDIS_BIT, reg);
  }
 }
 return 0;
}

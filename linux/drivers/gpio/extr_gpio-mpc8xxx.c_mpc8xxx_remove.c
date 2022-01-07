
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mpc8xxx_gpio_chip {int regs; int gc; scalar_t__ irq; int irqn; } ;


 int gpiochip_remove (int *) ;
 int iounmap (int ) ;
 int irq_domain_remove (scalar_t__) ;
 int irq_set_chained_handler_and_data (int ,int *,int *) ;
 struct mpc8xxx_gpio_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mpc8xxx_remove(struct platform_device *pdev)
{
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = platform_get_drvdata(pdev);

 if (mpc8xxx_gc->irq) {
  irq_set_chained_handler_and_data(mpc8xxx_gc->irqn, ((void*)0), ((void*)0));
  irq_domain_remove(mpc8xxx_gc->irq);
 }

 gpiochip_remove(&mpc8xxx_gc->gc);
 iounmap(mpc8xxx_gc->regs);

 return 0;
}

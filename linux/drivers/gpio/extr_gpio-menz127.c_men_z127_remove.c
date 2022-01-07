
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct men_z127_gpio {int mem; int reg_base; int gc; } ;
struct mcb_device {int dummy; } ;


 int gpiochip_remove (int *) ;
 int iounmap (int ) ;
 struct men_z127_gpio* mcb_get_drvdata (struct mcb_device*) ;
 int mcb_release_mem (int ) ;

__attribute__((used)) static void men_z127_remove(struct mcb_device *mdev)
{
 struct men_z127_gpio *men_z127_gpio = mcb_get_drvdata(mdev);

 gpiochip_remove(&men_z127_gpio->gc);
 iounmap(men_z127_gpio->reg_base);
 mcb_release_mem(men_z127_gpio->mem);
}

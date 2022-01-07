
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9052_onkey {int input; int work; int da9052; } ;


 int DA9052_IRQ_NONKEY ;
 int cancel_delayed_work_sync (int *) ;
 int da9052_free_irq (int ,int ,struct da9052_onkey*) ;
 int input_unregister_device (int ) ;
 int kfree (struct da9052_onkey*) ;
 struct da9052_onkey* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int da9052_onkey_remove(struct platform_device *pdev)
{
 struct da9052_onkey *onkey = platform_get_drvdata(pdev);

 da9052_free_irq(onkey->da9052, DA9052_IRQ_NONKEY, onkey);
 cancel_delayed_work_sync(&onkey->work);

 input_unregister_device(onkey->input);
 kfree(onkey);

 return 0;
}

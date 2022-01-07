
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct da9055_onkey {int input; int work; TYPE_1__* da9055; } ;
struct TYPE_2__ {int irq_data; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (int,struct da9055_onkey*) ;
 int input_unregister_device (int ) ;
 struct da9055_onkey* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int regmap_irq_get_virq (int ,int) ;

__attribute__((used)) static int da9055_onkey_remove(struct platform_device *pdev)
{
 struct da9055_onkey *onkey = platform_get_drvdata(pdev);
 int irq = platform_get_irq_byname(pdev, "ONKEY");

 irq = regmap_irq_get_virq(onkey->da9055->irq_data, irq);
 free_irq(irq, onkey);
 cancel_delayed_work_sync(&onkey->work);
 input_unregister_device(onkey->input);

 return 0;
}

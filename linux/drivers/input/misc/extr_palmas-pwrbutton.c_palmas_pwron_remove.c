
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct palmas_pwron {int input_dev; int input_work; int irq; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (int ,struct palmas_pwron*) ;
 int input_unregister_device (int ) ;
 int kfree (struct palmas_pwron*) ;
 struct palmas_pwron* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int palmas_pwron_remove(struct platform_device *pdev)
{
 struct palmas_pwron *pwron = platform_get_drvdata(pdev);

 free_irq(pwron->irq, pwron);
 cancel_delayed_work_sync(&pwron->input_work);

 input_unregister_device(pwron->input_dev);
 kfree(pwron);

 return 0;
}

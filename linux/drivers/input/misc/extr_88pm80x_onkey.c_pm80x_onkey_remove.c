
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_onkey_info {int idev; int irq; int pm80x; } ;
struct platform_device {int dummy; } ;


 int input_unregister_device (int ) ;
 int kfree (struct pm80x_onkey_info*) ;
 struct pm80x_onkey_info* platform_get_drvdata (struct platform_device*) ;
 int pm80x_free_irq (int ,int ,struct pm80x_onkey_info*) ;

__attribute__((used)) static int pm80x_onkey_remove(struct platform_device *pdev)
{
 struct pm80x_onkey_info *info = platform_get_drvdata(pdev);

 pm80x_free_irq(info->pm80x, info->irq, info);
 input_unregister_device(info->idev);
 kfree(info);
 return 0;
}

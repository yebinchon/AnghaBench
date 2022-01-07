
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int ts_idev; int irq; } ;
struct platform_device {int dev; } ;


 struct ucb1400_ts* dev_get_platdata (int *) ;
 int free_irq (int ,struct ucb1400_ts*) ;
 int input_unregister_device (int ) ;

__attribute__((used)) static int ucb1400_ts_remove(struct platform_device *pdev)
{
 struct ucb1400_ts *ucb = dev_get_platdata(&pdev->dev);

 free_irq(ucb->irq, ucb);
 input_unregister_device(ucb->ts_idev);

 return 0;
}

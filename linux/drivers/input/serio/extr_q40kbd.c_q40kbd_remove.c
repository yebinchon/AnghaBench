
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q40kbd {int port; } ;
struct platform_device {int dummy; } ;


 int Q40_IRQ_KEYBOARD ;
 int free_irq (int ,struct q40kbd*) ;
 int kfree (struct q40kbd*) ;
 struct q40kbd* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int q40kbd_remove(struct platform_device *pdev)
{
 struct q40kbd *q40kbd = platform_get_drvdata(pdev);






 serio_unregister_port(q40kbd->port);
 free_irq(Q40_IRQ_KEYBOARD, q40kbd);
 kfree(q40kbd);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct irqsteer_data {int irq_count; int ipg_clk; int domain; int * irq; } ;


 int clk_disable_unprepare (int ) ;
 int irq_domain_remove (int ) ;
 int irq_set_chained_handler_and_data (int ,int *,int *) ;
 struct irqsteer_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int imx_irqsteer_remove(struct platform_device *pdev)
{
 struct irqsteer_data *irqsteer_data = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < irqsteer_data->irq_count; i++)
  irq_set_chained_handler_and_data(irqsteer_data->irq[i],
       ((void*)0), ((void*)0));

 irq_domain_remove(irqsteer_data->domain);

 clk_disable_unprepare(irqsteer_data->ipg_clk);

 return 0;
}

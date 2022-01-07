
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts4800_irq_data {int domain; } ;
struct platform_device {int dummy; } ;


 int irq_domain_remove (int ) ;
 struct ts4800_irq_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ts4800_ic_remove(struct platform_device *pdev)
{
 struct ts4800_irq_data *data = platform_get_drvdata(pdev);

 irq_domain_remove(data->domain);

 return 0;
}

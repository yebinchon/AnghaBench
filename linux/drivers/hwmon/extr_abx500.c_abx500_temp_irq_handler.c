
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int (* irq_handler ) (int,struct abx500_temp*) ;} ;
struct abx500_temp {TYPE_1__ ops; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct abx500_temp* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int,struct abx500_temp*) ;

__attribute__((used)) static irqreturn_t abx500_temp_irq_handler(int irq, void *irq_data)
{
 struct platform_device *pdev = irq_data;
 struct abx500_temp *data = platform_get_drvdata(pdev);

 data->ops.irq_handler(irq, data);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct madera {int irq_data; int irq; int * irq_dev; } ;


 struct madera* dev_get_drvdata (int ) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int madera_irq_remove(struct platform_device *pdev)
{
 struct madera *madera = dev_get_drvdata(pdev->dev.parent);





 madera->irq_dev = ((void*)0);
 regmap_del_irq_chip(madera->irq, madera->irq_data);

 return 0;
}

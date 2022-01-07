
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct max8997_muic_info {int irq_work; } ;
struct TYPE_3__ {int virq; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int cancel_work_sync (int *) ;
 int free_irq (int ,struct max8997_muic_info*) ;
 TYPE_1__* muic_irqs ;
 struct max8997_muic_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int max8997_muic_remove(struct platform_device *pdev)
{
 struct max8997_muic_info *info = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < ARRAY_SIZE(muic_irqs); i++)
  free_irq(muic_irqs[i].virq, info);
 cancel_work_sync(&info->irq_work);

 return 0;
}

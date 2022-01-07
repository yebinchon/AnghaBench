
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max77843_muic_info {int irq_work; struct max77693_dev* max77843; } ;
struct max77693_dev {int i2c_muic; int irq_data_muic; int irq; } ;


 int cancel_work_sync (int *) ;
 int i2c_unregister_device (int ) ;
 struct max77843_muic_info* platform_get_drvdata (struct platform_device*) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int max77843_muic_remove(struct platform_device *pdev)
{
 struct max77843_muic_info *info = platform_get_drvdata(pdev);
 struct max77693_dev *max77843 = info->max77843;

 cancel_work_sync(&info->irq_work);
 regmap_del_irq_chip(max77843->irq, max77843->irq_data_muic);
 i2c_unregister_device(max77843->i2c_muic);

 return 0;
}

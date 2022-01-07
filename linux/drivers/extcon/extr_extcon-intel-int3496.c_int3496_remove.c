
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct int3496_data {int work; int usb_id_irq; } ;


 int cancel_delayed_work_sync (int *) ;
 int devm_free_irq (int *,int ,struct int3496_data*) ;
 struct int3496_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int int3496_remove(struct platform_device *pdev)
{
 struct int3496_data *data = platform_get_drvdata(pdev);

 devm_free_irq(&pdev->dev, data->usb_id_irq, data);
 cancel_delayed_work_sync(&data->work);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max77693_muic_info {int dock; int irq_work; } ;


 int cancel_work_sync (int *) ;
 int input_unregister_device (int ) ;
 struct max77693_muic_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int max77693_muic_remove(struct platform_device *pdev)
{
 struct max77693_muic_info *info = platform_get_drvdata(pdev);

 cancel_work_sync(&info->irq_work);
 input_unregister_device(info->dock);

 return 0;
}

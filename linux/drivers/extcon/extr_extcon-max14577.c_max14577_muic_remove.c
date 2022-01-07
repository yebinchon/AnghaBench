
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max14577_muic_info {int irq_work; } ;


 int cancel_work_sync (int *) ;
 struct max14577_muic_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int max14577_muic_remove(struct platform_device *pdev)
{
 struct max14577_muic_info *info = platform_get_drvdata(pdev);

 cancel_work_sync(&info->irq_work);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct abx500_temp {int work; scalar_t__ work_active; } ;
typedef int pm_message_t ;


 int cancel_delayed_work_sync (int *) ;
 struct abx500_temp* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int abx500_temp_suspend(struct platform_device *pdev,
          pm_message_t state)
{
 struct abx500_temp *data = platform_get_drvdata(pdev);

 if (data->work_active)
  cancel_delayed_work_sync(&data->work);

 return 0;
}

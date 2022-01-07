
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct abx500_temp {TYPE_1__* pdev; struct ab8500_temp* plat_data; } ;
struct ab8500_temp {int power_off_work; } ;
struct TYPE_2__ {int dev; } ;


 int DEFAULT_POWER_OFF_DELAY ;
 int HZ ;
 int dev_warn (int *,char*,int) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int ab8500_temp_irq_handler(int irq, struct abx500_temp *data)
{
 struct ab8500_temp *ab8500_data = data->plat_data;

 dev_warn(&data->pdev->dev, "Power off in %d s\n",
   DEFAULT_POWER_OFF_DELAY / HZ);

 schedule_delayed_work(&ab8500_data->power_off_work,
  DEFAULT_POWER_OFF_DELAY);
 return 0;
}

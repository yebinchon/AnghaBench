
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct abx500_temp {int monitored_sensors; scalar_t__* max; scalar_t__* min; int work_active; int work; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int *,char*) ;
 int schedule_monitor (struct abx500_temp*) ;

__attribute__((used)) static void threshold_updated(struct abx500_temp *data)
{
 int i;
 for (i = 0; i < data->monitored_sensors; i++)
  if (data->max[i] != 0 || data->min[i] != 0) {
   schedule_monitor(data);
   return;
  }

 dev_dbg(&data->pdev->dev, "No active thresholds.\n");
 cancel_delayed_work_sync(&data->work);
 data->work_active = 0;
}

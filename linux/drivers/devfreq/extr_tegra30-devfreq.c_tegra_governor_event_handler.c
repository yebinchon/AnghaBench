
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_devfreq {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct devfreq {TYPE_1__ dev; } ;






 struct tegra_devfreq* dev_get_drvdata (int ) ;
 int devfreq_monitor_resume (struct devfreq*) ;
 int devfreq_monitor_start (struct devfreq*) ;
 int devfreq_monitor_stop (struct devfreq*) ;
 int devfreq_monitor_suspend (struct devfreq*) ;
 int tegra_actmon_start (struct tegra_devfreq*) ;
 int tegra_actmon_stop (struct tegra_devfreq*) ;

__attribute__((used)) static int tegra_governor_event_handler(struct devfreq *devfreq,
     unsigned int event, void *data)
{
 struct tegra_devfreq *tegra = dev_get_drvdata(devfreq->dev.parent);

 switch (event) {
 case 130:
  devfreq_monitor_start(devfreq);
  tegra_actmon_start(tegra);
  break;

 case 129:
  tegra_actmon_stop(tegra);
  devfreq_monitor_stop(devfreq);
  break;

 case 128:
  tegra_actmon_stop(tegra);
  devfreq_monitor_suspend(devfreq);
  break;

 case 131:
  devfreq_monitor_resume(devfreq);
  tegra_actmon_start(tegra);
  break;
 }

 return 0;
}

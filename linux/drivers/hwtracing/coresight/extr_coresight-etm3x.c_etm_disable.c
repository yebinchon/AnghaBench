
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event {int dummy; } ;
struct etm_drvdata {int mode; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;





 int WARN_ON_ONCE (int) ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int etm_disable_perf (struct coresight_device*) ;
 int etm_disable_sysfs (struct coresight_device*) ;
 int local_read (int *) ;
 int local_set (int *,int const) ;

__attribute__((used)) static void etm_disable(struct coresight_device *csdev,
   struct perf_event *event)
{
 u32 mode;
 struct etm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);






 mode = local_read(&drvdata->mode);

 switch (mode) {
 case 130:
  break;
 case 128:
  etm_disable_sysfs(csdev);
  break;
 case 129:
  etm_disable_perf(csdev);
  break;
 default:
  WARN_ON_ONCE(mode);
  return;
 }

 if (mode)
  local_set(&drvdata->mode, 130);
}

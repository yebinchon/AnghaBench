
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event {int dummy; } ;
struct etmv4_drvdata {int mode; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;





 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int etm4_disable_perf (struct coresight_device*,struct perf_event*) ;
 int etm4_disable_sysfs (struct coresight_device*) ;
 int local_read (int *) ;
 int local_set (int *,int const) ;

__attribute__((used)) static void etm4_disable(struct coresight_device *csdev,
    struct perf_event *event)
{
 u32 mode;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);






 mode = local_read(&drvdata->mode);

 switch (mode) {
 case 130:
  break;
 case 128:
  etm4_disable_sysfs(csdev);
  break;
 case 129:
  etm4_disable_perf(csdev, event);
  break;
 }

 if (mode)
  local_set(&drvdata->mode, 130);
}

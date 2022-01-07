
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


 int CS_MODE_DISABLED ;


 int EBUSY ;
 int EINVAL ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int etm_enable_perf (struct coresight_device*,struct perf_event*) ;
 int etm_enable_sysfs (struct coresight_device*) ;
 int local_cmpxchg (int *,int ,int) ;
 int local_set (int *,int ) ;

__attribute__((used)) static int etm_enable(struct coresight_device *csdev,
        struct perf_event *event, u32 mode)
{
 int ret;
 u32 val;
 struct etm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 val = local_cmpxchg(&drvdata->mode, CS_MODE_DISABLED, mode);


 if (val)
  return -EBUSY;

 switch (mode) {
 case 128:
  ret = etm_enable_sysfs(csdev);
  break;
 case 129:
  ret = etm_enable_perf(csdev, event);
  break;
 default:
  ret = -EINVAL;
 }


 if (ret)
  local_set(&drvdata->mode, CS_MODE_DISABLED);

 return ret;
}

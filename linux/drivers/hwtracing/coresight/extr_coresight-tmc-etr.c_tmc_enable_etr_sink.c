
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct coresight_device {int dummy; } ;




 int EINVAL ;
 int tmc_enable_etr_sink_perf (struct coresight_device*,void*) ;
 int tmc_enable_etr_sink_sysfs (struct coresight_device*) ;

__attribute__((used)) static int tmc_enable_etr_sink(struct coresight_device *csdev,
          u32 mode, void *data)
{
 switch (mode) {
 case 128:
  return tmc_enable_etr_sink_sysfs(csdev);
 case 129:
  return tmc_enable_etr_sink_perf(csdev, data);
 }


 return -EINVAL;
}

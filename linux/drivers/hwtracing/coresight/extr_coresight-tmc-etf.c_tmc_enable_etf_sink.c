
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct coresight_device {int dev; } ;




 int EINVAL ;
 int dev_dbg (int *,char*) ;
 int tmc_enable_etf_sink_perf (struct coresight_device*,void*) ;
 int tmc_enable_etf_sink_sysfs (struct coresight_device*) ;

__attribute__((used)) static int tmc_enable_etf_sink(struct coresight_device *csdev,
          u32 mode, void *data)
{
 int ret;

 switch (mode) {
 case 128:
  ret = tmc_enable_etf_sink_sysfs(csdev);
  break;
 case 129:
  ret = tmc_enable_etf_sink_perf(csdev, data);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 if (ret)
  return ret;

 dev_dbg(&csdev->dev, "TMC-ETB/ETF enabled\n");
 return 0;
}

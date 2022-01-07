
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct coresight_device {int dev; } ;




 int EINVAL ;
 int dev_dbg (int *,char*) ;
 int etb_enable_perf (struct coresight_device*,void*) ;
 int etb_enable_sysfs (struct coresight_device*) ;

__attribute__((used)) static int etb_enable(struct coresight_device *csdev, u32 mode, void *data)
{
 int ret;

 switch (mode) {
 case 128:
  ret = etb_enable_sysfs(csdev);
  break;
 case 129:
  ret = etb_enable_perf(csdev, data);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (ret)
  return ret;

 dev_dbg(&csdev->dev, "ETB enabled\n");
 return 0;
}

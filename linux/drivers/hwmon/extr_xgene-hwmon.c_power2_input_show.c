
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_hwmon_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct xgene_hwmon_dev* dev_get_drvdata (struct device*) ;
 int mWATT_TO_uWATT (int ) ;
 int snprintf (char*,int ,char*,int) ;
 int xgene_hwmon_get_io_pwr (struct xgene_hwmon_dev*,int *) ;

__attribute__((used)) static ssize_t power2_input_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct xgene_hwmon_dev *ctx = dev_get_drvdata(dev);
 u32 val;
 int rc;

 rc = xgene_hwmon_get_io_pwr(ctx, &val);
 if (rc < 0)
  return rc;

 return snprintf(buf, PAGE_SIZE, "%u\n", mWATT_TO_uWATT(val));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_hwmon_dev {int temp_critical_alarm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct xgene_hwmon_dev* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t temp1_critical_alarm_show(struct device *dev,
      struct device_attribute *devattr,
      char *buf)
{
 struct xgene_hwmon_dev *ctx = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n", ctx->temp_critical_alarm);
}

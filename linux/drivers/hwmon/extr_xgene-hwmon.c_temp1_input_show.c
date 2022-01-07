
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_hwmon_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CELSIUS_TO_mCELSIUS (int) ;
 int PAGE_SIZE ;
 int TEMP_NEGATIVE_BIT ;
 struct xgene_hwmon_dev* dev_get_drvdata (struct device*) ;
 int sign_extend32 (int ,int ) ;
 int snprintf (char*,int ,char*,int) ;
 int xgene_hwmon_get_temp (struct xgene_hwmon_dev*,int *) ;

__attribute__((used)) static ssize_t temp1_input_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct xgene_hwmon_dev *ctx = dev_get_drvdata(dev);
 int rc, temp;
 u32 val;

 rc = xgene_hwmon_get_temp(ctx, &val);
 if (rc < 0)
  return rc;

 temp = sign_extend32(val, TEMP_NEGATIVE_BIT);

 return snprintf(buf, PAGE_SIZE, "%d\n", CELSIUS_TO_mCELSIUS(temp));
}

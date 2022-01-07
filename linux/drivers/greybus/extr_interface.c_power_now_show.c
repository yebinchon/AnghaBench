
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gb_interface {int dev; int interface_id; TYPE_1__* hd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int svc; } ;


 int GB_SVC_PWRMON_TYPE_PWR ;
 int dev_err (int *,char*,int) ;
 int gb_svc_pwrmon_intf_sample_get (int ,int ,int ,int*) ;
 int sprintf (char*,char*,int) ;
 struct gb_interface* to_gb_interface (struct device*) ;

__attribute__((used)) static ssize_t power_now_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct gb_interface *intf = to_gb_interface(dev);
 int ret;
 u32 measurement;

 ret = gb_svc_pwrmon_intf_sample_get(intf->hd->svc, intf->interface_id,
         GB_SVC_PWRMON_TYPE_PWR,
         &measurement);
 if (ret) {
  dev_err(&intf->dev, "failed to get power sample (%d)\n", ret);
  return ret;
 }

 return sprintf(buf, "%u\n", measurement);
}

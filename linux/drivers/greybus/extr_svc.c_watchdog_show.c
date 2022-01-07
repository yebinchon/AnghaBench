
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ gb_svc_watchdog_enabled (struct gb_svc*) ;
 int sprintf (char*,char*,char*) ;
 struct gb_svc* to_gb_svc (struct device*) ;

__attribute__((used)) static ssize_t watchdog_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct gb_svc *svc = to_gb_svc(dev);

 return sprintf(buf, "%s\n",
         gb_svc_watchdog_enabled(svc) ? "enabled" : "disabled");
}

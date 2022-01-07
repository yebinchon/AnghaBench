
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int action; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int GB_SVC_WATCHDOG_BITE_PANIC_KERNEL ;
 int GB_SVC_WATCHDOG_BITE_RESET_UNIPRO ;
 scalar_t__ sysfs_streq (char const*,char*) ;
 struct gb_svc* to_gb_svc (struct device*) ;

__attribute__((used)) static ssize_t watchdog_action_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t len)
{
 struct gb_svc *svc = to_gb_svc(dev);

 if (sysfs_streq(buf, "panic"))
  svc->action = GB_SVC_WATCHDOG_BITE_PANIC_KERNEL;
 else if (sysfs_streq(buf, "reset"))
  svc->action = GB_SVC_WATCHDOG_BITE_RESET_UNIPRO;
 else
  return -EINVAL;

 return len;
}

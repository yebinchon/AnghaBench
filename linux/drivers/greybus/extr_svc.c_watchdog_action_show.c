
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {scalar_t__ action; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ GB_SVC_WATCHDOG_BITE_PANIC_KERNEL ;
 scalar_t__ GB_SVC_WATCHDOG_BITE_RESET_UNIPRO ;
 int sprintf (char*,char*) ;
 struct gb_svc* to_gb_svc (struct device*) ;

__attribute__((used)) static ssize_t watchdog_action_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct gb_svc *svc = to_gb_svc(dev);

 if (svc->action == GB_SVC_WATCHDOG_BITE_PANIC_KERNEL)
  return sprintf(buf, "panic\n");
 else if (svc->action == GB_SVC_WATCHDOG_BITE_RESET_UNIPRO)
  return sprintf(buf, "reset\n");

 return -EINVAL;
}

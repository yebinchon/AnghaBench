
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {int manual_bind; } ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int strncmp (char const*,char*,size_t) ;
 struct serio_driver* to_serio_driver (struct device_driver*) ;

__attribute__((used)) static ssize_t bind_mode_store(struct device_driver *drv, const char *buf, size_t count)
{
 struct serio_driver *serio_drv = to_serio_driver(drv);
 int retval;

 retval = count;
 if (!strncmp(buf, "manual", count)) {
  serio_drv->manual_bind = 1;
 } else if (!strncmp(buf, "auto", count)) {
  serio_drv->manual_bind = 0;
 } else {
  retval = -EINVAL;
 }

 return retval;
}

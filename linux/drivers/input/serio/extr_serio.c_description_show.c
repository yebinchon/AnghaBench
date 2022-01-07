
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {char* description; } ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct serio_driver* to_serio_driver (struct device_driver*) ;

__attribute__((used)) static ssize_t description_show(struct device_driver *drv, char *buf)
{
 struct serio_driver *driver = to_serio_driver(drv);
 return sprintf(buf, "%s\n", driver->description ? driver->description : "(none)");
}

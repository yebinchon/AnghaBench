
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int manual_bind; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int strncmp (char const*,char*,size_t) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static ssize_t serio_set_bind_mode(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct serio *serio = to_serio_port(dev);
 int retval;

 retval = count;
 if (!strncmp(buf, "manual", count)) {
  serio->manual_bind = 1;
 } else if (!strncmp(buf, "auto", count)) {
  serio->manual_bind = 0;
 } else {
  retval = -EINVAL;
 }

 return retval;
}

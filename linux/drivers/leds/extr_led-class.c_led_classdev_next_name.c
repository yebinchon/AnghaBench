
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENOMEM ;
 struct device* class_find_device_by_name (int ,char*) ;
 int leds_class ;
 int put_device (struct device*) ;
 int snprintf (char*,size_t,char*,char const*,unsigned int) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static int led_classdev_next_name(const char *init_name, char *name,
      size_t len)
{
 unsigned int i = 0;
 int ret = 0;
 struct device *dev;

 strlcpy(name, init_name, len);

 while ((ret < len) &&
        (dev = class_find_device_by_name(leds_class, name))) {
  put_device(dev);
  ret = snprintf(name, len, "%s_%u", init_name, ++i);
 }

 if (ret >= len)
  return -ENOMEM;

 return i;
}

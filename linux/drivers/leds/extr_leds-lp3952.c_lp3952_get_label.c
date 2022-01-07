
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int LP3952_LABEL_MAX_LEN ;
 int device_property_read_string (struct device*,char const*,char const**) ;
 int strncpy (char*,char const*,int ) ;

__attribute__((used)) static int lp3952_get_label(struct device *dev, const char *label, char *dest)
{
 int ret;
 const char *str;

 ret = device_property_read_string(dev, label, &str);
 if (ret)
  return ret;

 strncpy(dest, str, LP3952_LABEL_MAX_LEN);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
typedef int propname ;


 unsigned int ARRAY_SIZE (char**) ;
 int ENOENT ;
 char** gpio_suffixes ;
 int of_gpio_named_count (int ,char*) ;
 int snprintf (char*,int,char*,char const*,...) ;

int of_gpio_get_count(struct device *dev, const char *con_id)
{
 int ret;
 char propname[32];
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
  if (con_id)
   snprintf(propname, sizeof(propname), "%s-%s",
     con_id, gpio_suffixes[i]);
  else
   snprintf(propname, sizeof(propname), "%s",
     gpio_suffixes[i]);

  ret = of_gpio_named_count(dev->of_node, propname);
  if (ret > 0)
   break;
 }
 return ret ? ret : -ENOENT;
}

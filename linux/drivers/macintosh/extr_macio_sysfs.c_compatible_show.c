
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct platform_device ofdev; } ;


 char* of_get_property (int ,char*,int*) ;
 scalar_t__ sprintf (char*,char*,char const*) ;
 int strlen (char const*) ;
 TYPE_2__* to_macio_device (struct device*) ;

__attribute__((used)) static ssize_t
compatible_show (struct device *dev, struct device_attribute *attr, char *buf)
{
 struct platform_device *of;
 const char *compat;
 int cplen;
 int length = 0;

 of = &to_macio_device (dev)->ofdev;
 compat = of_get_property(of->dev.of_node, "compatible", &cplen);
 if (!compat) {
  *buf = '\0';
  return 0;
 }
 while (cplen > 0) {
  int l;
  length += sprintf (buf, "%s\n", compat);
  buf += length;
  l = strlen (compat) + 1;
  compat += l;
  cplen -= l;
 }

 return length;
}

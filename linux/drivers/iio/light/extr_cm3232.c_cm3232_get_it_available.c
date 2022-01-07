
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int val2; int val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ PAGE_SIZE ;
 TYPE_1__* cm3232_als_it_scales ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,...) ;

__attribute__((used)) static ssize_t cm3232_get_it_available(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 int i, len;

 for (i = 0, len = 0; i < ARRAY_SIZE(cm3232_als_it_scales); i++)
  len += scnprintf(buf + len, PAGE_SIZE - len, "%u.%06u ",
   cm3232_als_it_scales[i].val,
   cm3232_als_it_scales[i].val2);
 return len + scnprintf(buf + len, PAGE_SIZE - len, "\n");
}

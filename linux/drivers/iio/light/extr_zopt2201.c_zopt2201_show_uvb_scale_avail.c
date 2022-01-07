
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int uscale; int scale; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ,int ) ;
 TYPE_1__* zopt2201_scale_uvb ;

__attribute__((used)) static ssize_t zopt2201_show_uvb_scale_avail(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 ssize_t len = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(zopt2201_scale_uvb); i++)
  len += scnprintf(buf + len, PAGE_SIZE - len, "%d.%06u ",
     zopt2201_scale_uvb[i].scale,
     zopt2201_scale_uvb[i].uscale);
 buf[len - 1] = '\n';

 return len;
}

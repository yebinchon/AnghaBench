
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int val2; int val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ PAGE_SIZE ;
 TYPE_1__* lv0104cs_scales ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ,int ) ;

__attribute__((used)) static ssize_t lv0104cs_show_scale_avail(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 ssize_t len = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(lv0104cs_scales); i++) {
  len += scnprintf(buf + len, PAGE_SIZE - len, "%d.%06d ",
    lv0104cs_scales[i].val,
    lv0104cs_scales[i].val2);
 }

 buf[len - 1] = '\n';

 return len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts221_avg {int * avg_avl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int *) ;
 size_t HTS221_SENSOR_T ;
 scalar_t__ PAGE_SIZE ;
 struct hts221_avg* hts221_avg_list ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ) ;

__attribute__((used)) static ssize_t
hts221_sysfs_temp_oversampling_avail(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 const struct hts221_avg *avg = &hts221_avg_list[HTS221_SENSOR_T];
 ssize_t len = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(avg->avg_avl); i++)
  len += scnprintf(buf + len, PAGE_SIZE - len, "%d ",
     avg->avg_avl[i]);
 buf[len - 1] = '\n';

 return len;
}

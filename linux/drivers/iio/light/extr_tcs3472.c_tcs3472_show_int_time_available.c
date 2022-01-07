
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t tcs3472_show_int_time_available(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 size_t len = 0;
 int i;

 for (i = 1; i <= 256; i++)
  len += scnprintf(buf + len, PAGE_SIZE - len, "0.%06d ",
   2400 * i);


 buf[len - 1] = '\n';

 return len;
}

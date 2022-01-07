
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t show_test(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 return scnprintf(buf, PAGE_SIZE,
    "#Write into test to start test sequence!#\n");
}

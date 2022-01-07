
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_label {char* label; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 struct pmbus_label* to_pmbus_label (struct device_attribute*) ;

__attribute__((used)) static ssize_t pmbus_show_label(struct device *dev,
    struct device_attribute *da, char *buf)
{
 struct pmbus_label *label = to_pmbus_label(da);

 return snprintf(buf, PAGE_SIZE, "%s\n", label->label);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int key_at_index ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t applesmc_key_at_index_show(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 return snprintf(sysfsbuf, PAGE_SIZE, "%d\n", key_at_index);
}

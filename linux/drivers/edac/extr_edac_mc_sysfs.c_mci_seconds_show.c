
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int start_time; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HZ ;
 int jiffies ;
 int sprintf (char*,char*,int) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t mci_seconds_show(struct device *dev,
    struct device_attribute *mattr,
    char *data)
{
 struct mem_ctl_info *mci = to_mci(dev);

 return sprintf(data, "%ld\n", (jiffies - mci->start_time) / HZ);
}

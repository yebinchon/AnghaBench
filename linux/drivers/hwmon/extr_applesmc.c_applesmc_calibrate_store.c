
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int applesmc_calibrate () ;

__attribute__((used)) static ssize_t applesmc_calibrate_store(struct device *dev,
 struct device_attribute *attr, const char *sysfsbuf, size_t count)
{
 applesmc_calibrate();

 return count;
}

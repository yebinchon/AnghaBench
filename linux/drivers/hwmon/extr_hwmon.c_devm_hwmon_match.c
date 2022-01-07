
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void device ;



__attribute__((used)) static int devm_hwmon_match(struct device *dev, void *res, void *data)
{
 struct device **hwdev = res;

 return *hwdev == data;
}

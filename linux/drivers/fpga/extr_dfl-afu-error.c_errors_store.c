
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int afu_port_err_clear (struct device*,int ) ;
 scalar_t__ kstrtou64 (char const*,int ,int *) ;

__attribute__((used)) static ssize_t errors_store(struct device *dev, struct device_attribute *attr,
       const char *buff, size_t count)
{
 u64 value;
 int ret;

 if (kstrtou64(buff, 0, &value))
  return -EINVAL;

 ret = afu_port_err_clear(dev, value);

 return ret ? ret : count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct via_cputemp_data {int msr_temp; int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EAGAIN ;
 struct via_cputemp_data* dev_get_drvdata (struct device*) ;
 int rdmsr_safe_on_cpu (int ,int ,scalar_t__*,scalar_t__*) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct via_cputemp_data *data = dev_get_drvdata(dev);
 u32 eax, edx;
 int err;

 err = rdmsr_safe_on_cpu(data->id, data->msr_temp, &eax, &edx);
 if (err)
  return -EAGAIN;

 return sprintf(buf, "%lu\n", ((unsigned long)eax & 0xffffff) * 1000);
}

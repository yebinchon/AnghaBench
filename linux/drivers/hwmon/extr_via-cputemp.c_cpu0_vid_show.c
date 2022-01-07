
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct via_cputemp_data {int vrm; int msr_vid; int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EAGAIN ;
 struct via_cputemp_data* dev_get_drvdata (struct device*) ;
 int rdmsr_safe_on_cpu (int ,int ,int*,int*) ;
 int sprintf (char*,char*,int) ;
 int vid_from_reg (int,int ) ;

__attribute__((used)) static ssize_t cpu0_vid_show(struct device *dev,
        struct device_attribute *devattr, char *buf)
{
 struct via_cputemp_data *data = dev_get_drvdata(dev);
 u32 eax, edx;
 int err;

 err = rdmsr_safe_on_cpu(data->id, data->msr_vid, &eax, &edx);
 if (err)
  return -EAGAIN;

 return sprintf(buf, "%d\n", vid_from_reg(~edx & 0x7f, data->vrm));
}

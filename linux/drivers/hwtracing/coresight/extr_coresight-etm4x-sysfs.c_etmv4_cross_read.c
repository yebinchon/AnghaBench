
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct etmv4_reg {scalar_t__ data; scalar_t__ addr; } ;
struct etmv4_drvdata {int cpu; scalar_t__ base; } ;
struct device {int dummy; } ;


 struct etmv4_drvdata* dev_get_drvdata (struct device const*) ;
 int do_smp_cross_read ;
 int smp_call_function_single (int ,int ,struct etmv4_reg*,int) ;

__attribute__((used)) static u32 etmv4_cross_read(const struct device *dev, u32 offset)
{
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev);
 struct etmv4_reg reg;

 reg.addr = drvdata->base + offset;




 smp_call_function_single(drvdata->cpu, do_smp_cross_read, &reg, 1);
 return reg.data;
}

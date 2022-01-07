
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct cpuinfo_x86 {int dummy; } ;


 int MSR_IA32_TEMPERATURE_TARGET ;
 int adjust_tjmax (struct cpuinfo_x86*,int,struct device*) ;
 scalar_t__ cpu_has_tjmax (struct cpuinfo_x86*) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_notice (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int) ;
 int force_tjmax ;
 int rdmsr_safe_on_cpu (int,int ,int*,int*) ;

__attribute__((used)) static int get_tjmax(struct cpuinfo_x86 *c, u32 id, struct device *dev)
{
 int err;
 u32 eax, edx;
 u32 val;





 err = rdmsr_safe_on_cpu(id, MSR_IA32_TEMPERATURE_TARGET, &eax, &edx);
 if (err) {
  if (cpu_has_tjmax(c))
   dev_warn(dev, "Unable to read TjMax from CPU %u\n", id);
 } else {
  val = (eax >> 16) & 0xff;




  if (val) {
   dev_dbg(dev, "TjMax is %d degrees C\n", val);
   return val * 1000;
  }
 }

 if (force_tjmax) {
  dev_notice(dev, "TjMax forced to %d degrees C by user\n",
      force_tjmax);
  return force_tjmax * 1000;
 }





 return adjust_tjmax(c, id, dev);
}

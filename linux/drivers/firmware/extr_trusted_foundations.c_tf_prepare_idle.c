
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int TF_CPU_PM ;
 int TF_CPU_PM_S1 ;
 int TF_CPU_PM_S1_NOFLUSH_L2 ;
 int TF_CPU_PM_S2 ;
 int TF_CPU_PM_S2_NO_MC_CLK ;
 int TF_CPU_PM_S3 ;





 int cpu_boot_addr ;
 int tf_generic_smc (int ,int ,int ) ;

__attribute__((used)) static int tf_prepare_idle(unsigned long mode)
{
 switch (mode) {
 case 132:
  tf_generic_smc(TF_CPU_PM, TF_CPU_PM_S3, cpu_boot_addr);
  break;

 case 131:
  tf_generic_smc(TF_CPU_PM, TF_CPU_PM_S2, cpu_boot_addr);
  break;

 case 130:
  tf_generic_smc(TF_CPU_PM, TF_CPU_PM_S2_NO_MC_CLK,
          cpu_boot_addr);
  break;

 case 129:
  tf_generic_smc(TF_CPU_PM, TF_CPU_PM_S1, cpu_boot_addr);
  break;

 case 128:
  tf_generic_smc(TF_CPU_PM, TF_CPU_PM_S1_NOFLUSH_L2,
          cpu_boot_addr);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}

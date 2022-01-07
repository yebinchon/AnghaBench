
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int power_profile_mode; int pm_enabled; } ;
typedef scalar_t__ int16_t ;


 int EINVAL ;
 int PP_SMC_POWER_PROFILE_CUSTOM ;
 scalar_t__ smu_workload_get_type (struct smu_context*,int) ;
 int sprintf (char*,char*,int,char const*,char*) ;

__attribute__((used)) static int arcturus_get_power_profile_mode(struct smu_context *smu,
        char *buf)
{
 static const char *profile_name[] = {
     "BOOTUP_DEFAULT",
     "3D_FULL_SCREEN",
     "POWER_SAVING",
     "VIDEO",
     "VR",
     "COMPUTE",
     "CUSTOM"};
 uint32_t i, size = 0;
 int16_t workload_type = 0;

 if (!smu->pm_enabled || !buf)
  return -EINVAL;

 for (i = 0; i <= PP_SMC_POWER_PROFILE_CUSTOM; i++) {




  workload_type = smu_workload_get_type(smu, i);
  if (workload_type < 0)
   continue;

  size += sprintf(buf + size, "%2d %14s%s\n",
   i, profile_name[i], (i == smu->power_profile_mode) ? "*" : " ");
 }

 return size;
}

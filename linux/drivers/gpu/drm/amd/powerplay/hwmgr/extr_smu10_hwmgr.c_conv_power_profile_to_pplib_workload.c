
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WORKLOAD_DEFAULT_BIT ;
 int WORKLOAD_PPLIB_COMPUTE_BIT ;
 int WORKLOAD_PPLIB_FULL_SCREEN_3D_BIT ;
 int WORKLOAD_PPLIB_POWER_SAVING_BIT ;
 int WORKLOAD_PPLIB_VIDEO_BIT ;
 int WORKLOAD_PPLIB_VR_BIT ;

__attribute__((used)) static int conv_power_profile_to_pplib_workload(int power_profile)
{
 int pplib_workload = 0;

 switch (power_profile) {
 case 133:
  pplib_workload = WORKLOAD_DEFAULT_BIT;
  break;
 case 131:
  pplib_workload = WORKLOAD_PPLIB_FULL_SCREEN_3D_BIT;
  break;
 case 130:
  pplib_workload = WORKLOAD_PPLIB_POWER_SAVING_BIT;
  break;
 case 129:
  pplib_workload = WORKLOAD_PPLIB_VIDEO_BIT;
  break;
 case 128:
  pplib_workload = WORKLOAD_PPLIB_VR_BIT;
  break;
 case 132:
  pplib_workload = WORKLOAD_PPLIB_COMPUTE_BIT;
  break;
 }

 return pplib_workload;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int aux; } ;


 int DP_ALPM_CAP ;
 int DP_RECEIVER_ALPM_CAP ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;

__attribute__((used)) static bool intel_dp_get_alpm_status(struct intel_dp *intel_dp)
{
 u8 alpm_caps = 0;

 if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
         &alpm_caps) != 1)
  return 0;
 return alpm_caps & DP_ALPM_CAP;
}

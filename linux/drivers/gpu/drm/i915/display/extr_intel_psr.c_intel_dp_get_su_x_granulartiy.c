
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_dp {int* psr_dpcd; int aux; } ;
typedef int ssize_t ;


 int DP_PSR2_SU_GRANULARITY_REQUIRED ;
 int DP_PSR2_SU_X_GRANULARITY ;
 int DRM_DEBUG_KMS (char*) ;
 int drm_dp_dpcd_read (int *,int ,int*,int) ;

__attribute__((used)) static u16 intel_dp_get_su_x_granulartiy(struct intel_dp *intel_dp)
{
 u16 val;
 ssize_t r;





 if (!(intel_dp->psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED))
  return 4;

 r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &val, 2);
 if (r != 2)
  DRM_DEBUG_KMS("Unable to read DP_PSR2_SU_X_GRANULARITY\n");





 if (r != 2 || val == 0)
  val = 4;

 return val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int* dpcd; int aux; } ;


 size_t DP_DPCD_REV ;
 int DP_MSTM_CAP ;
 int DP_MST_CAP ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;

__attribute__((used)) static bool
intel_dp_sink_can_mst(struct intel_dp *intel_dp)
{
 u8 mstm_cap;

 if (intel_dp->dpcd[DP_DPCD_REV] < 0x12)
  return 0;

 if (drm_dp_dpcd_readb(&intel_dp->aux, DP_MSTM_CAP, &mstm_cap) != 1)
  return 0;

 return mstm_cap & DP_MST_CAP;
}

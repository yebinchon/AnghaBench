
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int aux; } ;


 int DP_MAX_RESYNC_FRAME_COUNT_MASK ;
 int DP_SYNCHRONIZATION_LATENCY_IN_SINK ;
 int DRM_DEBUG_KMS (char*) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;

__attribute__((used)) static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
{
 u8 val = 8;

 if (drm_dp_dpcd_readb(&intel_dp->aux,
         DP_SYNCHRONIZATION_LATENCY_IN_SINK, &val) == 1)
  val &= DP_MAX_RESYNC_FRAME_COUNT_MASK;
 else
  DRM_DEBUG_KMS("Unable to get sink synchronization latency, assuming 8 frames\n");
 return val;
}

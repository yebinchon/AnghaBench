
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int aux; } ;


 scalar_t__ DP_DPRX_ESI_LEN ;
 int DP_SINK_COUNT_ESI ;
 scalar_t__ drm_dp_dpcd_read (int *,int ,int *,scalar_t__) ;

__attribute__((used)) static bool
intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *sink_irq_vector)
{
 return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI,
    sink_irq_vector, DP_DPRX_ESI_LEN) ==
  DP_DPRX_ESI_LEN;
}

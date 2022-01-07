
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int* dpcd; int attached_connector; int aux; } ;


 int DP_AUTOMATED_TEST_REQUEST ;
 int DP_CP_IRQ ;
 int DP_DEVICE_SERVICE_IRQ_VECTOR ;
 size_t DP_DPCD_REV ;
 int DP_SINK_SPECIFIC_IRQ ;
 int DRM_DEBUG_DRIVER (char*) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;
 int drm_dp_dpcd_writeb (int *,int ,int) ;
 int intel_dp_handle_test_request (struct intel_dp*) ;
 int intel_hdcp_handle_cp_irq (int ) ;

__attribute__((used)) static void intel_dp_check_service_irq(struct intel_dp *intel_dp)
{
 u8 val;

 if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
  return;

 if (drm_dp_dpcd_readb(&intel_dp->aux,
         DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
  return;

 drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);

 if (val & DP_AUTOMATED_TEST_REQUEST)
  intel_dp_handle_test_request(intel_dp);

 if (val & DP_CP_IRQ)
  intel_hdcp_handle_cp_irq(intel_dp->attached_connector);

 if (val & DP_SINK_SPECIFIC_IRQ)
  DRM_DEBUG_DRIVER("Sink specific irq unhandled\n");
}

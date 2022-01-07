
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_caps {int output_flags; int stall_support; int down_scaling; int up_scaling; int sharp_scaling; int smooth_scaling; int sdvo_inputs_mask; int sdvo_version_minor; int sdvo_version_major; int device_rev_id; int device_id; int vendor_id; } ;
struct intel_sdvo {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SDVO_CMD_GET_DEVICE_CAPS ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,struct intel_sdvo_caps*,int) ;

__attribute__((used)) static bool intel_sdvo_get_capabilities(struct intel_sdvo *intel_sdvo, struct intel_sdvo_caps *caps)
{
 BUILD_BUG_ON(sizeof(*caps) != 8);
 if (!intel_sdvo_get_value(intel_sdvo,
      SDVO_CMD_GET_DEVICE_CAPS,
      caps, sizeof(*caps)))
  return 0;

 DRM_DEBUG_KMS("SDVO capabilities:\n"
        "  vendor_id: %d\n"
        "  device_id: %d\n"
        "  device_rev_id: %d\n"
        "  sdvo_version_major: %d\n"
        "  sdvo_version_minor: %d\n"
        "  sdvo_inputs_mask: %d\n"
        "  smooth_scaling: %d\n"
        "  sharp_scaling: %d\n"
        "  up_scaling: %d\n"
        "  down_scaling: %d\n"
        "  stall_support: %d\n"
        "  output_flags: %d\n",
        caps->vendor_id,
        caps->device_id,
        caps->device_rev_id,
        caps->sdvo_version_major,
        caps->sdvo_version_minor,
        caps->sdvo_inputs_mask,
        caps->smooth_scaling,
        caps->sharp_scaling,
        caps->up_scaling,
        caps->down_scaling,
        caps->stall_support,
        caps->output_flags);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {int dummy; } ;


 int intel_sdvo_check_supp_encode (struct intel_sdvo*) ;

__attribute__((used)) static bool
intel_sdvo_is_hdmi_connector(struct intel_sdvo *intel_sdvo, int device)
{
 return intel_sdvo_check_supp_encode(intel_sdvo);
}

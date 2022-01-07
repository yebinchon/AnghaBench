
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo {int dummy; } ;


 int psb_intel_sdvo_check_supp_encode (struct psb_intel_sdvo*) ;

__attribute__((used)) static bool
psb_intel_sdvo_is_hdmi_connector(struct psb_intel_sdvo *psb_intel_sdvo, int device)
{
 return psb_intel_sdvo_check_supp_encode(psb_intel_sdvo);
}

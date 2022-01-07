
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct intel_lspcon {int dummy; } ;
struct TYPE_2__ {int aux; } ;


 int DP_DPCD_REV ;
 int DRM_DEBUG_KMS (char*,...) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;
 TYPE_1__* lspcon_to_intel_dp (struct intel_lspcon*) ;

__attribute__((used)) static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
{
 u8 rev;

 if (drm_dp_dpcd_readb(&lspcon_to_intel_dp(lspcon)->aux, DP_DPCD_REV,
         &rev) != 1) {
  DRM_DEBUG_KMS("Native AUX CH down\n");
  return 0;
 }

 DRM_DEBUG_KMS("Native AUX CH up, DPCD version: %d.%d\n",
        rev >> 4, rev & 0xf);

 return 1;
}

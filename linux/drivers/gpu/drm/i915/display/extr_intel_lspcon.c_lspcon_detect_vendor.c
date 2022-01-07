
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_lspcon {int vendor; } ;
struct drm_dp_dpcd_ident {int* oui; } ;
struct TYPE_2__ {struct drm_dp_dpcd_ident ident; } ;
struct intel_dp {TYPE_1__ desc; int dpcd; int aux; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int LSPCON_VENDOR_MCA ;

 int LSPCON_VENDOR_PARADE ;

 int drm_dp_is_branch (int ) ;
 scalar_t__ drm_dp_read_desc (int *,TYPE_1__*,int ) ;
 struct intel_dp* lspcon_to_intel_dp (struct intel_lspcon*) ;

__attribute__((used)) static bool lspcon_detect_vendor(struct intel_lspcon *lspcon)
{
 struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
 struct drm_dp_dpcd_ident *ident;
 u32 vendor_oui;

 if (drm_dp_read_desc(&dp->aux, &dp->desc, drm_dp_is_branch(dp->dpcd))) {
  DRM_ERROR("Can't read description\n");
  return 0;
 }

 ident = &dp->desc.ident;
 vendor_oui = (ident->oui[0] << 16) | (ident->oui[1] << 8) |
        ident->oui[2];

 switch (vendor_oui) {
 case 129:
  lspcon->vendor = LSPCON_VENDOR_MCA;
  DRM_DEBUG_KMS("Vendor: Mega Chips\n");
  break;

 case 128:
  lspcon->vendor = LSPCON_VENDOR_PARADE;
  DRM_DEBUG_KMS("Vendor: Parade Tech\n");
  break;

 default:
  DRM_ERROR("Invalid/Unknown vendor OUI\n");
  return 0;
 }

 return 1;
}

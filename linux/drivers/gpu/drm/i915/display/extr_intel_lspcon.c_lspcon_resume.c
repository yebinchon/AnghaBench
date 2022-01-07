
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lspcon {int dummy; } ;
typedef enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int DRM_LSPCON_MODE_LS ;
 scalar_t__ DRM_LSPCON_MODE_PCON ;
 scalar_t__ lspcon_change_mode (struct intel_lspcon*,scalar_t__) ;
 int lspcon_resume_in_pcon_wa (struct intel_lspcon*) ;
 scalar_t__ lspcon_wait_mode (struct intel_lspcon*,int) ;
 scalar_t__ lspcon_wake_native_aux_ch (struct intel_lspcon*) ;

void lspcon_resume(struct intel_lspcon *lspcon)
{
 enum drm_lspcon_mode expected_mode;

 if (lspcon_wake_native_aux_ch(lspcon)) {
  expected_mode = DRM_LSPCON_MODE_PCON;
  lspcon_resume_in_pcon_wa(lspcon);
 } else {
  expected_mode = DRM_LSPCON_MODE_LS;
 }

 if (lspcon_wait_mode(lspcon, expected_mode) == DRM_LSPCON_MODE_PCON)
  return;

 if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON))
  DRM_ERROR("LSPCON resume failed\n");
 else
  DRM_DEBUG_KMS("LSPCON resume success\n");
}

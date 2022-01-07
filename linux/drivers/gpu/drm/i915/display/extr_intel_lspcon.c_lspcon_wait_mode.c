
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lspcon {int dummy; } ;
typedef enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_ERROR (char*) ;
 int lspcon_get_current_mode (struct intel_lspcon*) ;
 int lspcon_mode_name (int) ;
 int wait_for (int,int) ;

__attribute__((used)) static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
          enum drm_lspcon_mode mode)
{
 enum drm_lspcon_mode current_mode;

 current_mode = lspcon_get_current_mode(lspcon);
 if (current_mode == mode)
  goto out;

 DRM_DEBUG_KMS("Waiting for LSPCON mode %s to settle\n",
        lspcon_mode_name(mode));

 wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode, 400);
 if (current_mode != mode)
  DRM_ERROR("LSPCON mode hasn't settled\n");

out:
 DRM_DEBUG_KMS("Current LSPCON mode %s\n",
        lspcon_mode_name(current_mode));

 return current_mode;
}

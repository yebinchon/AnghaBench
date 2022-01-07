
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;

__attribute__((used)) static void
radeon_mst_encoder_mode_set(struct drm_encoder *encoder,
        struct drm_display_mode *mode,
        struct drm_display_mode *adjusted_mode)
{
 DRM_DEBUG_KMS("\n");
}

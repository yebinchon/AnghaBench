
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_DPMS_ON ;
 int radeon_mst_encoder_dpms (struct drm_encoder*,int ) ;

__attribute__((used)) static void radeon_mst_encoder_commit(struct drm_encoder *encoder)
{
 radeon_mst_encoder_dpms(encoder, DRM_MODE_DPMS_ON);
 DRM_DEBUG_KMS("\n");
}

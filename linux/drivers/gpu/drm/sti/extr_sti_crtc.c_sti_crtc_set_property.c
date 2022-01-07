
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_property {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;

__attribute__((used)) static int sti_crtc_set_property(struct drm_crtc *crtc,
     struct drm_property *property,
     uint64_t val)
{
 DRM_DEBUG_KMS("\n");
 return 0;
}

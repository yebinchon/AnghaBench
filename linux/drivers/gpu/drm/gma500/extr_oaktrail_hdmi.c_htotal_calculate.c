
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int crtc_hdisplay; int crtc_htotal; int clock; } ;


 int DRM_DEBUG_KMS (char*,int) ;

__attribute__((used)) static unsigned int htotal_calculate(struct drm_display_mode *mode)
{
 u32 htotal, new_crtc_htotal;

 htotal = (mode->crtc_hdisplay - 1) | ((mode->crtc_htotal - 1) << 16);





 new_crtc_htotal = (mode->crtc_htotal - 1) * 200 * 1000 / mode->clock;

 DRM_DEBUG_KMS("new crtc htotal 0x%4x\n", new_crtc_htotal);
 return (mode->crtc_hdisplay - 1) | (new_crtc_htotal << 16);
}

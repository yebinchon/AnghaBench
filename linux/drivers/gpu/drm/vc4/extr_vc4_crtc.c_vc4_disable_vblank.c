
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_crtc {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int CRTC_WRITE (int ,int ) ;
 int PV_INTEN ;
 struct vc4_crtc* to_vc4_crtc (struct drm_crtc*) ;

__attribute__((used)) static void vc4_disable_vblank(struct drm_crtc *crtc)
{
 struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);

 CRTC_WRITE(PV_INTEN, 0);
}

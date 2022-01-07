
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_crtc {int irq; } ;
struct drm_crtc {int dummy; } ;


 int enable_irq (int ) ;
 struct ipu_crtc* to_ipu_crtc (struct drm_crtc*) ;

__attribute__((used)) static int ipu_enable_vblank(struct drm_crtc *crtc)
{
 struct ipu_crtc *ipu_crtc = to_ipu_crtc(crtc);

 enable_irq(ipu_crtc->irq);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_crtc {int irq; } ;
struct drm_crtc {int dummy; } ;


 int disable_irq_nosync (int ) ;
 struct ipu_crtc* to_ipu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ipu_disable_vblank(struct drm_crtc *crtc)
{
 struct ipu_crtc *ipu_crtc = to_ipu_crtc(crtc);

 disable_irq_nosync(ipu_crtc->irq);
}

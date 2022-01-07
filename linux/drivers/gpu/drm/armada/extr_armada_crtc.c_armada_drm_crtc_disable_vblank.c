
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct armada_crtc {int irq_lock; } ;


 int VSYNC_IRQ_ENA ;
 int armada_drm_crtc_disable_irq (struct armada_crtc*,int ) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void armada_drm_crtc_disable_vblank(struct drm_crtc *crtc)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
 unsigned long flags;

 spin_lock_irqsave(&dcrtc->irq_lock, flags);
 armada_drm_crtc_disable_irq(dcrtc, VSYNC_IRQ_ENA);
 spin_unlock_irqrestore(&dcrtc->irq_lock, flags);
}

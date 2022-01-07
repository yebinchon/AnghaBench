
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipu_soc {int dummy; } ;
struct ipu_crtc {int di; int dc; TYPE_1__* dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_2__* state; } ;
struct TYPE_6__ {int event_lock; } ;
struct TYPE_5__ {int * event; int active; } ;
struct TYPE_4__ {int parent; } ;


 struct ipu_soc* dev_get_drvdata (int ) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int ipu_crtc_disable_planes (struct ipu_crtc*,struct drm_crtc_state*) ;
 int ipu_dc_disable (struct ipu_soc*) ;
 int ipu_dc_disable_channel (int ) ;
 int ipu_di_disable (int ) ;
 int ipu_prg_disable (struct ipu_soc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct ipu_crtc* to_ipu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ipu_crtc_atomic_disable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_crtc_state)
{
 struct ipu_crtc *ipu_crtc = to_ipu_crtc(crtc);
 struct ipu_soc *ipu = dev_get_drvdata(ipu_crtc->dev->parent);

 ipu_dc_disable_channel(ipu_crtc->dc);
 ipu_di_disable(ipu_crtc->di);





 ipu_crtc_disable_planes(ipu_crtc, old_crtc_state);
 ipu_dc_disable(ipu);
 ipu_prg_disable(ipu);

 drm_crtc_vblank_off(crtc);

 spin_lock_irq(&crtc->dev->event_lock);
 if (crtc->state->event && !crtc->state->active) {
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  crtc->state->event = ((void*)0);
 }
 spin_unlock_irq(&crtc->dev->event_lock);
}

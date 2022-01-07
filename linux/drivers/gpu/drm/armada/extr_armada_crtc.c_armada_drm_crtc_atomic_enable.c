
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_crtc_state {int active; } ;
struct TYPE_6__ {int id; } ;
struct drm_crtc {TYPE_1__* state; int name; TYPE_2__ base; } ;
struct armada_crtc {TYPE_3__* variant; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int (* enable ) (struct armada_crtc*,TYPE_4__*) ;} ;
struct TYPE_5__ {TYPE_4__ adjusted_mode; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int WARN_ON (int ) ;
 int armada_drm_crtc_queue_state_event (struct drm_crtc*) ;
 int armada_drm_crtc_update (struct armada_crtc*,int) ;
 int drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;
 int stub1 (struct armada_crtc*,TYPE_4__*) ;

__attribute__((used)) static void armada_drm_crtc_atomic_enable(struct drm_crtc *crtc,
       struct drm_crtc_state *old_state)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);

 DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);

 if (!old_state->active) {





  if (dcrtc->variant->enable)
   dcrtc->variant->enable(dcrtc, &crtc->state->adjusted_mode);
 }
 armada_drm_crtc_update(dcrtc, 1);
 drm_crtc_vblank_on(crtc);

 if (crtc->state->adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
  WARN_ON(drm_crtc_vblank_get(crtc));

 armada_drm_crtc_queue_state_event(crtc);
}

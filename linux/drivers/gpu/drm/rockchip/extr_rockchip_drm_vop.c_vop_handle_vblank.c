
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct vop {int fb_unref_work; int pending; int * event; struct drm_crtc crtc; struct drm_device* drm_dev; } ;
struct drm_device {int event_lock; } ;


 int VOP_PENDING_FB_UNREF ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 int drm_flip_work_commit (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int system_unbound_wq ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void vop_handle_vblank(struct vop *vop)
{
 struct drm_device *drm = vop->drm_dev;
 struct drm_crtc *crtc = &vop->crtc;

 spin_lock(&drm->event_lock);
 if (vop->event) {
  drm_crtc_send_vblank_event(crtc, vop->event);
  drm_crtc_vblank_put(crtc);
  vop->event = ((void*)0);
 }
 spin_unlock(&drm->event_lock);

 if (test_and_clear_bit(VOP_PENDING_FB_UNREF, &vop->pending))
  drm_flip_work_commit(&vop->fb_unref_work, system_unbound_wq);
}

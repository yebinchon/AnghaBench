
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vc4_dev {int async_modeset; } ;
struct vc4_bo {int seqno; } ;
struct vc4_async_flip_state {int cb; struct drm_framebuffer* old_fb; struct drm_pending_vblank_event* event; struct drm_crtc* crtc; struct drm_framebuffer* fb; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_gem_cma_object {int base; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_plane* primary; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_framebuffer* fb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int down_interruptible (int *) ;
 int drm_atomic_set_fb_for_plane (TYPE_1__*,struct drm_framebuffer*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;
 int drm_framebuffer_get (struct drm_framebuffer*) ;
 int drm_framebuffer_put (struct drm_framebuffer*) ;
 int kfree (struct vc4_async_flip_state*) ;
 struct vc4_async_flip_state* kzalloc (int,int ) ;
 struct vc4_bo* to_vc4_bo (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_async_page_flip_complete ;
 int vc4_bo_dec_usecnt (struct vc4_bo*) ;
 int vc4_bo_inc_usecnt (struct vc4_bo*) ;
 int vc4_queue_seqno_cb (struct drm_device*,int *,int ,int ) ;

__attribute__((used)) static int vc4_async_page_flip(struct drm_crtc *crtc,
          struct drm_framebuffer *fb,
          struct drm_pending_vblank_event *event,
          uint32_t flags)
{
 struct drm_device *dev = crtc->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct drm_plane *plane = crtc->primary;
 int ret = 0;
 struct vc4_async_flip_state *flip_state;
 struct drm_gem_cma_object *cma_bo = drm_fb_cma_get_gem_obj(fb, 0);
 struct vc4_bo *bo = to_vc4_bo(&cma_bo->base);
 ret = vc4_bo_inc_usecnt(bo);
 if (ret)
  return ret;

 flip_state = kzalloc(sizeof(*flip_state), GFP_KERNEL);
 if (!flip_state) {
  vc4_bo_dec_usecnt(bo);
  return -ENOMEM;
 }

 drm_framebuffer_get(fb);
 flip_state->fb = fb;
 flip_state->crtc = crtc;
 flip_state->event = event;


 ret = down_interruptible(&vc4->async_modeset);
 if (ret) {
  drm_framebuffer_put(fb);
  vc4_bo_dec_usecnt(bo);
  kfree(flip_state);
  return ret;
 }
 flip_state->old_fb = plane->state->fb;
 if (flip_state->old_fb)
  drm_framebuffer_get(flip_state->old_fb);

 WARN_ON(drm_crtc_vblank_get(crtc) != 0);





 drm_atomic_set_fb_for_plane(plane->state, fb);

 vc4_queue_seqno_cb(dev, &flip_state->cb, bo->seqno,
      vc4_async_page_flip_complete);


 return 0;
}

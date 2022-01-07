
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; int func; } ;
struct wait_rps_boost {TYPE_1__ wait; struct drm_crtc* crtc; int request; } ;
struct drm_crtc {int dev; } ;
struct dma_fence {int dummy; } ;


 int GFP_KERNEL ;
 int INTEL_GEN (int ) ;
 int add_wait_queue (int ,TYPE_1__*) ;
 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_is_i915 (struct dma_fence*) ;
 int do_rps_boost ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 int drm_crtc_vblank_waitqueue (struct drm_crtc*) ;
 struct wait_rps_boost* kmalloc (int,int ) ;
 int to_i915 (int ) ;
 int to_request (int ) ;

__attribute__((used)) static void add_rps_boost_after_vblank(struct drm_crtc *crtc,
           struct dma_fence *fence)
{
 struct wait_rps_boost *wait;

 if (!dma_fence_is_i915(fence))
  return;

 if (INTEL_GEN(to_i915(crtc->dev)) < 6)
  return;

 if (drm_crtc_vblank_get(crtc))
  return;

 wait = kmalloc(sizeof(*wait), GFP_KERNEL);
 if (!wait) {
  drm_crtc_vblank_put(crtc);
  return;
 }

 wait->request = to_request(dma_fence_get(fence));
 wait->crtc = crtc;

 wait->wait.func = do_rps_boost;
 wait->wait.flags = 0;

 add_wait_queue(drm_crtc_vblank_waitqueue(crtc), &wait->wait);
}

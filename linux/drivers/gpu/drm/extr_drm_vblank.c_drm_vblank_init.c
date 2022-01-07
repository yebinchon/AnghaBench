
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_vblank_crtc {unsigned int pipe; int seqlock; int disable_timer; int queue; struct drm_device* dev; } ;
struct drm_device {unsigned int num_crtcs; int vblank_disable_immediate; TYPE_1__* driver; struct drm_vblank_crtc* vblank; int vblank_time_lock; int vbl_lock; } ;
struct TYPE_2__ {scalar_t__ get_vblank_timestamp; } ;


 int DRM_INFO (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct drm_vblank_crtc* kcalloc (unsigned int,int,int ) ;
 int seqlock_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int vblank_disable_fn ;

int drm_vblank_init(struct drm_device *dev, unsigned int num_crtcs)
{
 int ret = -ENOMEM;
 unsigned int i;

 spin_lock_init(&dev->vbl_lock);
 spin_lock_init(&dev->vblank_time_lock);

 dev->num_crtcs = num_crtcs;

 dev->vblank = kcalloc(num_crtcs, sizeof(*dev->vblank), GFP_KERNEL);
 if (!dev->vblank)
  goto err;

 for (i = 0; i < num_crtcs; i++) {
  struct drm_vblank_crtc *vblank = &dev->vblank[i];

  vblank->dev = dev;
  vblank->pipe = i;
  init_waitqueue_head(&vblank->queue);
  timer_setup(&vblank->disable_timer, vblank_disable_fn, 0);
  seqlock_init(&vblank->seqlock);
 }

 DRM_INFO("Supports vblank timestamp caching Rev 2 (21.10.2013).\n");


 if (dev->driver->get_vblank_timestamp)
  DRM_INFO("Driver supports precise vblank timestamp query.\n");
 else
  DRM_INFO("No driver support for vblank timestamp query.\n");


 if (dev->vblank_disable_immediate && !dev->driver->get_vblank_timestamp) {
  dev->vblank_disable_immediate = 0;
  DRM_INFO("Setting vblank_disable_immediate to false because "
    "get_vblank_timestamp == NULL\n");
 }

 return 0;

err:
 dev->num_crtcs = 0;
 return ret;
}

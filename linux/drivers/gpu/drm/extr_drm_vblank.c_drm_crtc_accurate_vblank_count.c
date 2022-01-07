
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct drm_device {int vblank_time_lock; TYPE_1__* driver; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {int get_vblank_timestamp; } ;


 int DRM_UT_VBL ;
 int WARN_ONCE (int,char*) ;
 unsigned int drm_crtc_index (struct drm_crtc*) ;
 int drm_debug ;
 int drm_update_vblank_count (struct drm_device*,unsigned int,int) ;
 int drm_vblank_count (struct drm_device*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u64 drm_crtc_accurate_vblank_count(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 unsigned int pipe = drm_crtc_index(crtc);
 u64 vblank;
 unsigned long flags;

 WARN_ONCE(drm_debug & DRM_UT_VBL && !dev->driver->get_vblank_timestamp,
    "This function requires support for accurate vblank timestamps.");

 spin_lock_irqsave(&dev->vblank_time_lock, flags);

 drm_update_vblank_count(dev, pipe, 0);
 vblank = drm_vblank_count(dev, pipe);

 spin_unlock_irqrestore(&dev->vblank_time_lock, flags);

 return vblank;
}

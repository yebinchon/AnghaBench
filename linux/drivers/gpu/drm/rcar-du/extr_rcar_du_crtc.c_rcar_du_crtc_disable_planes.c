
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_du_device {int dev; } ;
struct drm_crtc {int dummy; } ;
struct rcar_du_crtc {int index; int vblank_count; int vblank_wait; int vblank_lock; int group; struct drm_crtc crtc; struct rcar_du_device* dev; } ;


 int DS1PR ;
 int DS2PR ;
 int DSSR ;
 int DSSR_VBK ;
 int dev_warn (int ,char*) ;
 int drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 int msecs_to_jiffies (int) ;
 int rcar_du_crtc_read (struct rcar_du_crtc*,int ) ;
 int rcar_du_group_write (int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void rcar_du_crtc_disable_planes(struct rcar_du_crtc *rcrtc)
{
 struct rcar_du_device *rcdu = rcrtc->dev;
 struct drm_crtc *crtc = &rcrtc->crtc;
 u32 status;


 drm_crtc_vblank_get(crtc);
 spin_lock_irq(&rcrtc->vblank_lock);
 rcar_du_group_write(rcrtc->group, rcrtc->index % 2 ? DS2PR : DS1PR, 0);
 status = rcar_du_crtc_read(rcrtc, DSSR);
 rcrtc->vblank_count = status & DSSR_VBK ? 2 : 1;
 spin_unlock_irq(&rcrtc->vblank_lock);

 if (!wait_event_timeout(rcrtc->vblank_wait, rcrtc->vblank_count == 0,
    msecs_to_jiffies(100)))
  dev_warn(rcdu->dev, "vertical blanking timeout\n");

 drm_crtc_vblank_put(crtc);
}

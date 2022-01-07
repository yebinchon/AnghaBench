
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int vop_lock; int dev; int line_flag_completion; int is_enabled; } ;
struct drm_crtc {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ETIMEDOUT ;
 int msecs_to_jiffies (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 struct vop* to_vop (struct drm_crtc*) ;
 int vop_line_flag_irq_disable (struct vop*) ;
 int vop_line_flag_irq_enable (struct vop*) ;
 scalar_t__ vop_line_flag_irq_is_enabled (struct vop*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout)
{
 struct vop *vop = to_vop(crtc);
 unsigned long jiffies_left;
 int ret = 0;

 if (!crtc || !vop->is_enabled)
  return -ENODEV;

 mutex_lock(&vop->vop_lock);
 if (mstimeout <= 0) {
  ret = -EINVAL;
  goto out;
 }

 if (vop_line_flag_irq_is_enabled(vop)) {
  ret = -EBUSY;
  goto out;
 }

 reinit_completion(&vop->line_flag_completion);
 vop_line_flag_irq_enable(vop);

 jiffies_left = wait_for_completion_timeout(&vop->line_flag_completion,
         msecs_to_jiffies(mstimeout));
 vop_line_flag_irq_disable(vop);

 if (jiffies_left == 0) {
  DRM_DEV_ERROR(vop->dev, "Timeout waiting for IRQ\n");
  ret = -ETIMEDOUT;
  goto out;
 }

out:
 mutex_unlock(&vop->vop_lock);
 return ret;
}

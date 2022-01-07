
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int vbl_received; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int R128_CRTC_VBLANK_INT ;
 int R128_CRTC_VBLANK_INT_AK ;
 int R128_GEN_INT_STATUS ;
 int R128_READ (int ) ;
 int R128_WRITE (int ,int ) ;
 int atomic_inc (int *) ;
 int drm_handle_vblank (struct drm_device*,int ) ;

irqreturn_t r128_driver_irq_handler(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *) arg;
 drm_r128_private_t *dev_priv = (drm_r128_private_t *) dev->dev_private;
 int status;

 status = R128_READ(R128_GEN_INT_STATUS);


 if (status & R128_CRTC_VBLANK_INT) {
  R128_WRITE(R128_GEN_INT_STATUS, R128_CRTC_VBLANK_INT_AK);
  atomic_inc(&dev_priv->vbl_received);
  drm_handle_vblank(dev, 0);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}

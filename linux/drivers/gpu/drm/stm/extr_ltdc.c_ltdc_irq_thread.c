
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {int irq_status; int error_status; int err_lock; } ;
struct drm_device {struct ltdc_device* dev_private; } ;
struct drm_crtc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ISR_FUIF ;
 int ISR_LIF ;
 int ISR_TERRIF ;
 struct drm_crtc* drm_crtc_from_index (struct drm_device*,int ) ;
 int drm_crtc_handle_vblank (struct drm_crtc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t ltdc_irq_thread(int irq, void *arg)
{
 struct drm_device *ddev = arg;
 struct ltdc_device *ldev = ddev->dev_private;
 struct drm_crtc *crtc = drm_crtc_from_index(ddev, 0);


 if (ldev->irq_status & ISR_LIF)
  drm_crtc_handle_vblank(crtc);


 mutex_lock(&ldev->err_lock);
 if (ldev->irq_status & ISR_FUIF)
  ldev->error_status |= ISR_FUIF;
 if (ldev->irq_status & ISR_TERRIF)
  ldev->error_status |= ISR_TERRIF;
 mutex_unlock(&ldev->err_lock);

 return IRQ_HANDLED;
}

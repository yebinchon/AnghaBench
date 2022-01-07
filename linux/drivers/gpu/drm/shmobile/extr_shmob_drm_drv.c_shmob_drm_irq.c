
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shmob_drm_device {int crtc; int irq_lock; } ;
struct drm_device {struct shmob_drm_device* dev_private; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LDINTR ;
 int LDINTR_STATUS_MASK ;
 int LDINTR_VES ;
 int drm_handle_vblank (struct drm_device*,int ) ;
 int lcdc_read (struct shmob_drm_device*,int ) ;
 int lcdc_write (struct shmob_drm_device*,int ,int) ;
 int shmob_drm_crtc_finish_page_flip (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t shmob_drm_irq(int irq, void *arg)
{
 struct drm_device *dev = arg;
 struct shmob_drm_device *sdev = dev->dev_private;
 unsigned long flags;
 u32 status;





 spin_lock_irqsave(&sdev->irq_lock, flags);
 status = lcdc_read(sdev, LDINTR);
 lcdc_write(sdev, LDINTR, status ^ LDINTR_STATUS_MASK);
 spin_unlock_irqrestore(&sdev->irq_lock, flags);

 if (status & LDINTR_VES) {
  drm_handle_vblank(dev, 0);
  shmob_drm_crtc_finish_page_flip(&sdev->crtc);
 }

 return IRQ_HANDLED;
}

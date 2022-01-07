
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shmob_drm_device {int irq_lock; } ;


 int LDINTR ;
 int LDINTR_STATUS_MASK ;
 int LDINTR_VEE ;
 int lcdc_read (struct shmob_drm_device*,int ) ;
 int lcdc_write (struct shmob_drm_device*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void shmob_drm_crtc_enable_vblank(struct shmob_drm_device *sdev,
      bool enable)
{
 unsigned long flags;
 u32 ldintr;


 spin_lock_irqsave(&sdev->irq_lock, flags);
 ldintr = lcdc_read(sdev, LDINTR) | LDINTR_STATUS_MASK;
 if (enable)
  ldintr |= LDINTR_VEE;
 else
  ldintr &= ~LDINTR_VEE;
 lcdc_write(sdev, LDINTR, ldintr);
 spin_unlock_irqrestore(&sdev->irq_lock, flags);
}

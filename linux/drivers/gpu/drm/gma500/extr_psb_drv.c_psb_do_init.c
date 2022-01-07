
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psb_gtt {int mmu_gatt_start; int stolen_size; int gtt_pages; int gatt_start; } ;
struct drm_psb_private {int gatt_free_offset; int lock_2d; int irqmask_lock; struct psb_gtt gtt; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PSB_CR_BIF_BANK0 ;
 int PSB_CR_BIF_BANK1 ;
 int PSB_CR_BIF_CTRL ;
 int PSB_CR_BIF_TWOD_REQ_BASE ;
 int PSB_RSGX32 (int ) ;
 int PSB_WSGX32 (int,int ) ;
 int _PSB_MMU_ER_MASK ;
 int dev_err (int ,char*) ;
 int psb_spank (struct drm_psb_private*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int psb_do_init(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct psb_gtt *pg = &dev_priv->gtt;

 uint32_t stolen_gtt;

 if (pg->mmu_gatt_start & 0x0FFFFFFF) {
  dev_err(dev->dev, "Gatt must be 256M aligned. This is a bug.\n");
  return -EINVAL;
 }

 stolen_gtt = (pg->stolen_size >> PAGE_SHIFT) * 4;
 stolen_gtt = (stolen_gtt + PAGE_SIZE - 1) >> PAGE_SHIFT;
 stolen_gtt = (stolen_gtt < pg->gtt_pages) ? stolen_gtt : pg->gtt_pages;

 dev_priv->gatt_free_offset = pg->mmu_gatt_start +
     (stolen_gtt << PAGE_SHIFT) * 1024;

 spin_lock_init(&dev_priv->irqmask_lock);
 spin_lock_init(&dev_priv->lock_2d);

 PSB_WSGX32(0x00000000, PSB_CR_BIF_BANK0);
 PSB_WSGX32(0x00000000, PSB_CR_BIF_BANK1);
 PSB_RSGX32(PSB_CR_BIF_BANK1);


 PSB_WSGX32((PSB_RSGX32(PSB_CR_BIF_CTRL) & ~_PSB_MMU_ER_MASK),
     PSB_CR_BIF_CTRL);
 PSB_RSGX32(PSB_CR_BIF_CTRL);

 psb_spank(dev_priv);


 PSB_WSGX32(pg->gatt_start, PSB_CR_BIF_TWOD_REQ_BASE);
 PSB_RSGX32(PSB_CR_BIF_TWOD_REQ_BASE);

 return 0;
}

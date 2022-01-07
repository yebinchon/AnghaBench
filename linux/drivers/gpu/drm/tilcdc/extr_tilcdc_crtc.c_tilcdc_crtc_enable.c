
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_crtc {int enabled; int enable_lock; int irq_lock; int last_vblank; scalar_t__ shutdown; } ;
struct drm_device {int dev; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DATA_ONLY ;
 int LCDC_DMA_CTRL_REG ;
 int LCDC_DUAL_FRAME_BUFFER_ENABLE ;
 int LCDC_PALETTE_LOAD_MODE (int ) ;
 int LCDC_PALETTE_LOAD_MODE_MASK ;
 int LCDC_RASTER_CTRL_REG ;
 int LCDC_RASTER_ENABLE ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int ktime_get () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int reset (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tilcdc_clear (struct drm_device*,int ,int ) ;
 int tilcdc_crtc_enable_irqs (struct drm_device*) ;
 int tilcdc_crtc_set_mode (struct drm_crtc*) ;
 int tilcdc_set (struct drm_device*,int ,int ) ;
 int tilcdc_write_mask (struct drm_device*,int ,int ,int ) ;
 struct tilcdc_crtc* to_tilcdc_crtc (struct drm_crtc*) ;

__attribute__((used)) static void tilcdc_crtc_enable(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct tilcdc_crtc *tilcdc_crtc = to_tilcdc_crtc(crtc);
 unsigned long flags;

 mutex_lock(&tilcdc_crtc->enable_lock);
 if (tilcdc_crtc->enabled || tilcdc_crtc->shutdown) {
  mutex_unlock(&tilcdc_crtc->enable_lock);
  return;
 }

 pm_runtime_get_sync(dev->dev);

 reset(crtc);

 tilcdc_crtc_set_mode(crtc);

 tilcdc_crtc_enable_irqs(dev);

 tilcdc_clear(dev, LCDC_DMA_CTRL_REG, LCDC_DUAL_FRAME_BUFFER_ENABLE);
 tilcdc_write_mask(dev, LCDC_RASTER_CTRL_REG,
     LCDC_PALETTE_LOAD_MODE(DATA_ONLY),
     LCDC_PALETTE_LOAD_MODE_MASK);







 spin_lock_irqsave(&tilcdc_crtc->irq_lock, flags);
 tilcdc_crtc->last_vblank = ktime_get();
 tilcdc_set(dev, LCDC_RASTER_CTRL_REG, LCDC_RASTER_ENABLE);
 spin_unlock_irqrestore(&tilcdc_crtc->irq_lock, flags);

 drm_crtc_vblank_on(crtc);

 tilcdc_crtc->enabled = 1;
 mutex_unlock(&tilcdc_crtc->enable_lock);
}

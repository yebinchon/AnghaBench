
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tiler_block {int dummy; } ;
struct omap_gem_object {scalar_t__ dma_addr_cnt; int flags; int lock; int dma_addr; struct tiler_block* block; int roll; int pages; int height; int width; } ;
struct omap_drm_private {scalar_t__ has_dmm; } ;
struct drm_gem_object {int size; TYPE_1__* dev; } ;
typedef enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; struct omap_drm_private* dev_private; } ;


 int BUG_ON (struct tiler_block*) ;
 int DBG (char*,int *) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct tiler_block*) ;
 int OMAP_BO_TILED ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct tiler_block*) ;
 int dev_err (int ,char*,int,...) ;
 int gem2fmt (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_gem_attach_pages (struct drm_gem_object*) ;
 scalar_t__ omap_gem_is_contiguous (struct omap_gem_object*) ;
 int tiler_pin (struct tiler_block*,int ,int,int ,int) ;
 int tiler_release (struct tiler_block*) ;
 struct tiler_block* tiler_reserve_1d (int) ;
 struct tiler_block* tiler_reserve_2d (int,int ,int ,int ) ;
 int tiler_ssptr (struct tiler_block*) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

int omap_gem_pin(struct drm_gem_object *obj, dma_addr_t *dma_addr)
{
 struct omap_drm_private *priv = obj->dev->dev_private;
 struct omap_gem_object *omap_obj = to_omap_bo(obj);
 int ret = 0;

 mutex_lock(&omap_obj->lock);

 if (!omap_gem_is_contiguous(omap_obj) && priv->has_dmm) {
  if (omap_obj->dma_addr_cnt == 0) {
   u32 npages = obj->size >> PAGE_SHIFT;
   enum tiler_fmt fmt = gem2fmt(omap_obj->flags);
   struct tiler_block *block;

   BUG_ON(omap_obj->block);

   ret = omap_gem_attach_pages(obj);
   if (ret)
    goto fail;

   if (omap_obj->flags & OMAP_BO_TILED) {
    block = tiler_reserve_2d(fmt,
      omap_obj->width,
      omap_obj->height, 0);
   } else {
    block = tiler_reserve_1d(obj->size);
   }

   if (IS_ERR(block)) {
    ret = PTR_ERR(block);
    dev_err(obj->dev->dev,
     "could not remap: %d (%d)\n", ret, fmt);
    goto fail;
   }


   ret = tiler_pin(block, omap_obj->pages, npages,
     omap_obj->roll, 1);
   if (ret) {
    tiler_release(block);
    dev_err(obj->dev->dev,
      "could not pin: %d\n", ret);
    goto fail;
   }

   omap_obj->dma_addr = tiler_ssptr(block);
   omap_obj->block = block;

   DBG("got dma address: %pad", &omap_obj->dma_addr);
  }

  omap_obj->dma_addr_cnt++;

  *dma_addr = omap_obj->dma_addr;
 } else if (omap_gem_is_contiguous(omap_obj)) {
  *dma_addr = omap_obj->dma_addr;
 } else {
  ret = -EINVAL;
  goto fail;
 }

fail:
 mutex_unlock(&omap_obj->lock);

 return ret;
}

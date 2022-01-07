
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tiler_block {int dummy; } ;
struct omap_drm_usergart_entry {int dma_addr; struct tiler_block* block; } ;
struct omap_drm_usergart {int height; int stride_pfn; struct omap_drm_usergart_entry* entry; void* slot_shift; void* height_shift; } ;
struct omap_drm_private {int has_dmm; struct omap_drm_usergart* usergart; } ;
struct drm_device {int dev; struct omap_drm_private* dev_private; } ;
typedef enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;


 int ARRAY_SIZE (int const*) ;
 int DBG (char*,int,int,int,int,int *,int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tiler_block*) ;
 int NUM_USERGART_ENTRIES ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct tiler_block*) ;
 int const TILFMT_16BIT ;
 int const TILFMT_32BIT ;
 int const TILFMT_8BIT ;
 int dev_err (int ,char*,int,int,int ) ;
 int dev_warn (int ,char*) ;
 int dmm_is_available () ;
 void* ilog2 (int) ;
 struct omap_drm_usergart* kcalloc (int,int,int ) ;
 int tiler_align (int const,int*,int*) ;
 struct tiler_block* tiler_reserve_2d (int const,int,int,int) ;
 int tiler_ssptr (struct tiler_block*) ;
 int tiler_stride (int const,int ) ;

void omap_gem_init(struct drm_device *dev)
{
 struct omap_drm_private *priv = dev->dev_private;
 struct omap_drm_usergart *usergart;
 const enum tiler_fmt fmts[] = {
   TILFMT_8BIT, TILFMT_16BIT, TILFMT_32BIT
 };
 int i, j;

 if (!dmm_is_available()) {

  dev_warn(dev->dev, "DMM not available, disable DMM support\n");
  return;
 }

 usergart = kcalloc(3, sizeof(*usergart), GFP_KERNEL);
 if (!usergart)
  return;


 for (i = 0; i < ARRAY_SIZE(fmts); i++) {
  u16 h = 1, w = PAGE_SIZE >> i;

  tiler_align(fmts[i], &w, &h);




  usergart[i].height = h;
  usergart[i].height_shift = ilog2(h);
  usergart[i].stride_pfn = tiler_stride(fmts[i], 0) >> PAGE_SHIFT;
  usergart[i].slot_shift = ilog2((PAGE_SIZE / h) >> i);
  for (j = 0; j < NUM_USERGART_ENTRIES; j++) {
   struct omap_drm_usergart_entry *entry;
   struct tiler_block *block;

   entry = &usergart[i].entry[j];
   block = tiler_reserve_2d(fmts[i], w, h, PAGE_SIZE);
   if (IS_ERR(block)) {
    dev_err(dev->dev,
      "reserve failed: %d, %d, %ld\n",
      i, j, PTR_ERR(block));
    return;
   }
   entry->dma_addr = tiler_ssptr(block);
   entry->block = block;

   DBG("%d:%d: %dx%d: dma_addr=%pad stride=%d", i, j, w, h,
     &entry->dma_addr,
     usergart[i].stride_pfn << PAGE_SHIFT);
  }
 }

 priv->usergart = usergart;
 priv->has_dmm = 1;
}

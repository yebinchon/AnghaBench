
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {TYPE_1__* filp; } ;
struct gtt_range {TYPE_2__ gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dev; } ;
struct TYPE_7__ {int f_mapping; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int __GFP_DMA32 ;
 int dev_err (int ,char*,TYPE_2__*,...) ;
 int drm_gem_handle_create (struct drm_file*,TYPE_2__*,int *) ;
 scalar_t__ drm_gem_object_init (struct drm_device*,TYPE_2__*,int ) ;
 int drm_gem_object_put_unlocked (TYPE_2__*) ;
 int drm_gem_object_release (TYPE_2__*) ;
 int mapping_set_gfp_mask (int ,int) ;
 struct gtt_range* psb_gtt_alloc_range (struct drm_device*,int ,char*,int ,int ) ;
 int psb_gtt_free_range (struct drm_device*,struct gtt_range*) ;
 int roundup (int ,int ) ;

int psb_gem_create(struct drm_file *file, struct drm_device *dev, u64 size,
     u32 *handlep, int stolen, u32 align)
{
 struct gtt_range *r;
 int ret;
 u32 handle;

 size = roundup(size, PAGE_SIZE);



 r = psb_gtt_alloc_range(dev, size, "gem", 0, PAGE_SIZE);
 if (r == ((void*)0)) {
  dev_err(dev->dev, "no memory for %lld byte GEM object\n", size);
  return -ENOSPC;
 }

 if (drm_gem_object_init(dev, &r->gem, size) != 0) {
  psb_gtt_free_range(dev, r);

  dev_err(dev->dev, "GEM init failed for %lld\n", size);
  return -ENOMEM;
 }

 mapping_set_gfp_mask(r->gem.filp->f_mapping, GFP_KERNEL | __GFP_DMA32);

 ret = drm_gem_handle_create(file, &r->gem, &handle);
 if (ret) {
  dev_err(dev->dev, "GEM handle failed for %p, %lld\n",
       &r->gem, size);
  drm_gem_object_release(&r->gem);
  psb_gtt_free_range(dev, r);
  return ret;
 }

 drm_gem_object_put_unlocked(&r->gem);
 *handlep = handle;
 return 0;
}

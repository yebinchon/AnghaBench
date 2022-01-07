
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
union omap_gem_size {int bytes; TYPE_1__ tiled; } ;
typedef int u32 ;
struct drm_gem_object {TYPE_2__* filp; } ;
struct omap_gem_object {int flags; int mm_list; int vaddr; int dma_addr; int height; int width; int lock; struct drm_gem_object base; } ;
struct omap_drm_private {int list_lock; int obj_list; int has_dmm; int usergart; } ;
struct drm_device {int dev; struct omap_drm_private* dev_private; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {struct address_space* f_mapping; } ;


 int GFP_KERNEL ;
 int GFP_USER ;
 int OMAP_BO_CACHED ;
 int OMAP_BO_MEM_DMABUF ;
 int OMAP_BO_MEM_DMA_API ;
 int OMAP_BO_MEM_SHMEM ;
 int OMAP_BO_SCANOUT ;
 int OMAP_BO_TILED ;
 int OMAP_BO_UNCACHED ;
 int OMAP_BO_WC ;
 size_t PAGE_ALIGN (int ) ;
 int __GFP_DMA32 ;
 int dev_err (int ,char*) ;
 int dma_alloc_wc (int ,size_t,int *,int ) ;
 int drm_gem_object_init (struct drm_device*,struct drm_gem_object*,size_t) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_gem_private_object_init (struct drm_device*,struct drm_gem_object*,size_t) ;
 int gem2fmt (int) ;
 int kfree (struct omap_gem_object*) ;
 struct omap_gem_object* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mapping_set_gfp_mask (struct address_space*,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tiler_align (int ,int *,int *) ;
 int tiler_get_cpu_cache_flags () ;
 size_t tiler_size (int ,int ,int ) ;

struct drm_gem_object *omap_gem_new(struct drm_device *dev,
  union omap_gem_size gsize, u32 flags)
{
 struct omap_drm_private *priv = dev->dev_private;
 struct omap_gem_object *omap_obj;
 struct drm_gem_object *obj;
 struct address_space *mapping;
 size_t size;
 int ret;


 if (flags & OMAP_BO_TILED) {
  if (!priv->usergart) {
   dev_err(dev->dev, "Tiled buffers require DMM\n");
   return ((void*)0);
  }





  flags &= ~OMAP_BO_SCANOUT;
  flags |= OMAP_BO_MEM_SHMEM;





  flags &= ~(OMAP_BO_CACHED|OMAP_BO_WC|OMAP_BO_UNCACHED);
  flags |= tiler_get_cpu_cache_flags();
 } else if ((flags & OMAP_BO_SCANOUT) && !priv->has_dmm) {





  flags |= OMAP_BO_MEM_DMA_API;
 } else if (!(flags & OMAP_BO_MEM_DMABUF)) {



  flags |= OMAP_BO_MEM_SHMEM;
 }


 omap_obj = kzalloc(sizeof(*omap_obj), GFP_KERNEL);
 if (!omap_obj)
  return ((void*)0);

 obj = &omap_obj->base;
 omap_obj->flags = flags;
 mutex_init(&omap_obj->lock);

 if (flags & OMAP_BO_TILED) {




  tiler_align(gem2fmt(flags), &gsize.tiled.width,
       &gsize.tiled.height);

  size = tiler_size(gem2fmt(flags), gsize.tiled.width,
      gsize.tiled.height);

  omap_obj->width = gsize.tiled.width;
  omap_obj->height = gsize.tiled.height;
 } else {
  size = PAGE_ALIGN(gsize.bytes);
 }


 if (!(flags & OMAP_BO_MEM_SHMEM)) {
  drm_gem_private_object_init(dev, obj, size);
 } else {
  ret = drm_gem_object_init(dev, obj, size);
  if (ret)
   goto err_free;

  mapping = obj->filp->f_mapping;
  mapping_set_gfp_mask(mapping, GFP_USER | __GFP_DMA32);
 }


 if (flags & OMAP_BO_MEM_DMA_API) {
  omap_obj->vaddr = dma_alloc_wc(dev->dev, size,
            &omap_obj->dma_addr,
            GFP_KERNEL);
  if (!omap_obj->vaddr)
   goto err_release;
 }

 mutex_lock(&priv->list_lock);
 list_add(&omap_obj->mm_list, &priv->obj_list);
 mutex_unlock(&priv->list_lock);

 return obj;

err_release:
 drm_gem_object_release(obj);
err_free:
 kfree(omap_obj);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_private {int capabilities; int bdev; TYPE_2__* dev; } ;
struct vmw_cmdbuf_man {int has_pool; int using_mob; size_t size; int * cmd_space; int default_size; int mm; int map_obj; int map; int handle; struct vmw_private* dev_priv; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DRM_INFO (char*,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SHIFT ;
 int SVGA_CAP_DX ;
 int VMW_CMDBUF_INLINE_SIZE ;
 int dma_alloc_coherent (int *,size_t,int *,int ) ;
 int drm_mm_init (int *,int ,size_t) ;
 int ttm_bo_create (int *,size_t,int ,int *,int ,int,int **) ;
 int ttm_bo_kmap (int *,int ,size_t,int *) ;
 int ttm_bo_put (int *) ;
 int ttm_bo_type_device ;
 int ttm_kmap_obj_virtual (int *,int*) ;
 int vmw_mob_ne_placement ;

int vmw_cmdbuf_set_pool_size(struct vmw_cmdbuf_man *man,
        size_t size, size_t default_size)
{
 struct vmw_private *dev_priv = man->dev_priv;
 bool dummy;
 int ret;

 if (man->has_pool)
  return -EINVAL;


 size = PAGE_ALIGN(size);
 man->map = dma_alloc_coherent(&dev_priv->dev->pdev->dev, size,
          &man->handle, GFP_KERNEL);
 if (man->map) {
  man->using_mob = 0;
 } else {






  if (!(dev_priv->capabilities & SVGA_CAP_DX))
   return -ENOMEM;

  ret = ttm_bo_create(&dev_priv->bdev, size, ttm_bo_type_device,
        &vmw_mob_ne_placement, 0, 0,
        &man->cmd_space);
  if (ret)
   return ret;

  man->using_mob = 1;
  ret = ttm_bo_kmap(man->cmd_space, 0, size >> PAGE_SHIFT,
      &man->map_obj);
  if (ret)
   goto out_no_map;

  man->map = ttm_kmap_obj_virtual(&man->map_obj, &dummy);
 }

 man->size = size;
 drm_mm_init(&man->mm, 0, size >> PAGE_SHIFT);

 man->has_pool = 1;







 man->default_size = VMW_CMDBUF_INLINE_SIZE;
 DRM_INFO("Using command buffers with %s pool.\n",
   (man->using_mob) ? "MOB" : "DMA");

 return 0;

out_no_map:
 if (man->using_mob) {
  ttm_bo_put(man->cmd_space);
  man->cmd_space = ((void*)0);
 }

 return ret;
}

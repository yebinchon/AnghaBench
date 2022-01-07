
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned long start; } ;
struct TYPE_8__ {unsigned long size; unsigned long offset; } ;
struct sis_memblock {TYPE_4__ mm_node; int owner_list; TYPE_3__ req; } ;
struct sis_file_private {int obj_list; } ;
struct drm_file {struct sis_file_private* driver_priv; } ;
struct drm_device {int struct_mutex; TYPE_1__* dev_private; } ;
struct TYPE_6__ {scalar_t__ vram_initialized; scalar_t__ agp_initialized; unsigned long vram_offset; unsigned long agp_offset; int object_idr; int vram_mm; int agp_mm; } ;
typedef TYPE_1__ drm_sis_private_t ;
struct TYPE_7__ {unsigned long size; unsigned long offset; int free; } ;
typedef TYPE_2__ drm_sis_mem_t ;


 int AGP_TYPE ;
 int DRM_DEBUG (char*,int,unsigned long,unsigned long) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long SIS_MM_ALIGN_MASK ;
 unsigned long SIS_MM_ALIGN_SHIFT ;
 int drm_mm_insert_node (int *,TYPE_4__*,unsigned long) ;
 int drm_mm_remove_node (TYPE_4__*) ;
 int idr_alloc (int *,struct sis_memblock*,int,int ,int ) ;
 int kfree (struct sis_memblock*) ;
 struct sis_memblock* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sis_malloc (TYPE_3__*) ;

__attribute__((used)) static int sis_drm_alloc(struct drm_device *dev, struct drm_file *file,
    void *data, int pool)
{
 drm_sis_private_t *dev_priv = dev->dev_private;
 drm_sis_mem_t *mem = data;
 int retval = 0, user_key;
 struct sis_memblock *item;
 struct sis_file_private *file_priv = file->driver_priv;
 unsigned long offset;

 mutex_lock(&dev->struct_mutex);

 if (0 == ((pool == 0) ? dev_priv->vram_initialized :
        dev_priv->agp_initialized)) {
  DRM_ERROR
      ("Attempt to allocate from uninitialized memory manager.\n");
  mutex_unlock(&dev->struct_mutex);
  return -EINVAL;
 }

 item = kzalloc(sizeof(*item), GFP_KERNEL);
 if (!item) {
  retval = -ENOMEM;
  goto fail_alloc;
 }

 mem->size = (mem->size + SIS_MM_ALIGN_MASK) >> SIS_MM_ALIGN_SHIFT;
 if (pool == AGP_TYPE) {
  retval = drm_mm_insert_node(&dev_priv->agp_mm,
         &item->mm_node,
         mem->size);
  offset = item->mm_node.start;
 } else {







  retval = drm_mm_insert_node(&dev_priv->vram_mm,
         &item->mm_node,
         mem->size);
  offset = item->mm_node.start;

 }
 if (retval)
  goto fail_alloc;

 retval = idr_alloc(&dev_priv->object_idr, item, 1, 0, GFP_KERNEL);
 if (retval < 0)
  goto fail_idr;
 user_key = retval;

 list_add(&item->owner_list, &file_priv->obj_list);
 mutex_unlock(&dev->struct_mutex);

 mem->offset = ((pool == 0) ?
        dev_priv->vram_offset : dev_priv->agp_offset) +
     (offset << SIS_MM_ALIGN_SHIFT);
 mem->free = user_key;
 mem->size = mem->size << SIS_MM_ALIGN_SHIFT;

 return 0;

fail_idr:
 drm_mm_remove_node(&item->mm_node);
fail_alloc:
 kfree(item);
 mutex_unlock(&dev->struct_mutex);

 mem->offset = 0;
 mem->size = 0;
 mem->free = 0;

 DRM_DEBUG("alloc %d, size = %ld, offset = %ld\n", pool, mem->size,
    mem->offset);

 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; } ;
struct sis_memblock {TYPE_1__ req; int mm_node; int owner_list; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; TYPE_2__* dev_private; } ;
struct TYPE_5__ {int object_idr; } ;
typedef TYPE_2__ drm_sis_private_t ;
struct TYPE_6__ {int free; } ;
typedef TYPE_3__ drm_sis_mem_t ;


 int DRM_DEBUG (char*,int ) ;
 int EINVAL ;
 scalar_t__ drm_mm_node_allocated (int *) ;
 int drm_mm_remove_node (int *) ;
 struct sis_memblock* idr_find (int *,int ) ;
 int idr_remove (int *,int ) ;
 int kfree (struct sis_memblock*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sis_free (int ) ;

__attribute__((used)) static int sis_drm_free(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_sis_private_t *dev_priv = dev->dev_private;
 drm_sis_mem_t *mem = data;
 struct sis_memblock *obj;

 mutex_lock(&dev->struct_mutex);
 obj = idr_find(&dev_priv->object_idr, mem->free);
 if (obj == ((void*)0)) {
  mutex_unlock(&dev->struct_mutex);
  return -EINVAL;
 }

 idr_remove(&dev_priv->object_idr, mem->free);
 list_del(&obj->owner_list);
 if (drm_mm_node_allocated(&obj->mm_node))
  drm_mm_remove_node(&obj->mm_node);




 kfree(obj);
 mutex_unlock(&dev->struct_mutex);
 DRM_DEBUG("free = 0x%lx\n", mem->free);

 return 0;
}

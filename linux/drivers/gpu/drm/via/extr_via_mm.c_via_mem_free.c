
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct via_memblock {int mm_node; int owner_list; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; TYPE_1__* dev_private; } ;
struct TYPE_3__ {int object_idr; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {int index; } ;
typedef TYPE_2__ drm_via_mem_t ;


 int DRM_DEBUG (char*,int ) ;
 int EINVAL ;
 int drm_mm_remove_node (int *) ;
 struct via_memblock* idr_find (int *,int ) ;
 int idr_remove (int *,int ) ;
 int kfree (struct via_memblock*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int via_mem_free(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_private_t *dev_priv = dev->dev_private;
 drm_via_mem_t *mem = data;
 struct via_memblock *obj;

 mutex_lock(&dev->struct_mutex);
 obj = idr_find(&dev_priv->object_idr, mem->index);
 if (obj == ((void*)0)) {
  mutex_unlock(&dev->struct_mutex);
  return -EINVAL;
 }

 idr_remove(&dev_priv->object_idr, mem->index);
 list_del(&obj->owner_list);
 drm_mm_remove_node(&obj->mm_node);
 kfree(obj);
 mutex_unlock(&dev->struct_mutex);

 DRM_DEBUG("free = 0x%lx\n", mem->index);

 return 0;
}

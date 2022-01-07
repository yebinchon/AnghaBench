
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct drm_gem_object {int vma_node; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*) ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;

int etnaviv_gem_mmap_offset(struct drm_gem_object *obj, u64 *offset)
{
 int ret;


 ret = drm_gem_create_mmap_offset(obj);
 if (ret)
  dev_err(obj->dev->dev, "could not allocate mmap offset\n");
 else
  *offset = drm_vma_node_offset_addr(&obj->vma_node);

 return ret;
}

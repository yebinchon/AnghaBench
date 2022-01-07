
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int vma_node; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;

int
nouveau_display_dumb_map_offset(struct drm_file *file_priv,
    struct drm_device *dev,
    uint32_t handle, uint64_t *poffset)
{
 struct drm_gem_object *gem;

 gem = drm_gem_object_lookup(file_priv, handle);
 if (gem) {
  struct nouveau_bo *bo = nouveau_gem_object(gem);
  *poffset = drm_vma_node_offset_addr(&bo->bo.base.vma_node);
  drm_gem_object_put_unlocked(gem);
  return 0;
 }

 return -ENOENT;
}

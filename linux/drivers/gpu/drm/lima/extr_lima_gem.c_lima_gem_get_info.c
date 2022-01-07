
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct lima_vm {int dummy; } ;
struct lima_drm_priv {struct lima_vm* vm; } ;
struct lima_bo {int dummy; } ;
struct drm_gem_object {int vma_node; } ;
struct drm_file {int dummy; } ;


 int ENOENT ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;
 int lima_vm_get_va (struct lima_vm*,struct lima_bo*) ;
 struct lima_bo* to_lima_bo (struct drm_gem_object*) ;
 struct lima_drm_priv* to_lima_drm_priv (struct drm_file*) ;

int lima_gem_get_info(struct drm_file *file, u32 handle, u32 *va, u64 *offset)
{
 struct drm_gem_object *obj;
 struct lima_bo *bo;
 struct lima_drm_priv *priv = to_lima_drm_priv(file);
 struct lima_vm *vm = priv->vm;
 int err;

 obj = drm_gem_object_lookup(file, handle);
 if (!obj)
  return -ENOENT;

 bo = to_lima_bo(obj);

 *va = lima_vm_get_va(vm, bo);

 err = drm_gem_create_mmap_offset(obj);
 if (!err)
  *offset = drm_vma_node_offset_addr(&obj->vma_node);

 drm_gem_object_put_unlocked(obj);
 return err;
}

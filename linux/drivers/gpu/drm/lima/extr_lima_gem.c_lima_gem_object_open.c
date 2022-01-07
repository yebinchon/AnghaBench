
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_vm {int dummy; } ;
struct lima_drm_priv {struct lima_vm* vm; } ;
struct lima_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;


 int lima_vm_bo_add (struct lima_vm*,struct lima_bo*,int) ;
 struct lima_bo* to_lima_bo (struct drm_gem_object*) ;
 struct lima_drm_priv* to_lima_drm_priv (struct drm_file*) ;

int lima_gem_object_open(struct drm_gem_object *obj, struct drm_file *file)
{
 struct lima_bo *bo = to_lima_bo(obj);
 struct lima_drm_priv *priv = to_lima_drm_priv(file);
 struct lima_vm *vm = priv->vm;

 return lima_vm_bo_add(vm, bo, 1);
}

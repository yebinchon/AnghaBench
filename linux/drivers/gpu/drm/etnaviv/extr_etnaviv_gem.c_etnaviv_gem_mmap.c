
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_private_data; } ;
struct file {int dummy; } ;
struct etnaviv_gem_object {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mmap ) (struct etnaviv_gem_object*,struct vm_area_struct*) ;} ;


 int DBG (char*,int) ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int stub1 (struct etnaviv_gem_object*,struct vm_area_struct*) ;
 struct etnaviv_gem_object* to_etnaviv_bo (int ) ;

int etnaviv_gem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct etnaviv_gem_object *obj;
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret) {
  DBG("mmap failed: %d", ret);
  return ret;
 }

 obj = to_etnaviv_bo(vma->vm_private_data);
 return obj->ops->mmap(obj, vma);
}

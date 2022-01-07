
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pages; int madv; } ;
struct TYPE_3__ {int filp; } ;
struct drm_i915_gem_object {TYPE_2__ mm; TYPE_1__ base; } ;
typedef int loff_t ;


 int EFAULT ;
 int ERR_PTR (int ) ;
 int __I915_MADV_PURGED ;
 int file_inode (int ) ;
 int shmem_truncate_range (int ,int ,int ) ;

__attribute__((used)) static void
shmem_truncate(struct drm_i915_gem_object *obj)
{






 shmem_truncate_range(file_inode(obj->base.filp), 0, (loff_t)-1);
 obj->mm.madv = __I915_MADV_PURGED;
 obj->mm.pages = ERR_PTR(-EFAULT);
}

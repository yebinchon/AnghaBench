
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vm_area_struct {int vm_flags; int vm_page_prot; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_3__ {int filp; scalar_t__ size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_i915_gem_mmap {int flags; scalar_t__ addr_ptr; int size; int offset; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 unsigned long EINTR ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 unsigned long ENOMEM ;
 unsigned long ENXIO ;
 int I915_MMAP_WC ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int X86_FEATURE_PAT ;
 scalar_t__ __vma_matches (struct vm_area_struct*,int ,unsigned long,int ) ;
 int boot_cpu_has (int ) ;
 TYPE_2__* current ;
 scalar_t__ down_write_killable (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 struct drm_i915_gem_object* i915_gem_object_lookup (struct drm_file*,int ) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int pgprot_writecombine (int ) ;
 scalar_t__ range_overflows (int ,int ,scalar_t__) ;
 int up_write (int *) ;
 int vm_get_page_prot (int ) ;
 unsigned long vm_mmap (int ,int ,int ,int,int ,int ) ;

int
i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file)
{
 struct drm_i915_gem_mmap *args = data;
 struct drm_i915_gem_object *obj;
 unsigned long addr;

 if (args->flags & ~(I915_MMAP_WC))
  return -EINVAL;

 if (args->flags & I915_MMAP_WC && !boot_cpu_has(X86_FEATURE_PAT))
  return -ENODEV;

 obj = i915_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;




 if (!obj->base.filp) {
  addr = -ENXIO;
  goto err;
 }

 if (range_overflows(args->offset, args->size, (u64)obj->base.size)) {
  addr = -EINVAL;
  goto err;
 }

 addr = vm_mmap(obj->base.filp, 0, args->size,
         PROT_READ | PROT_WRITE, MAP_SHARED,
         args->offset);
 if (IS_ERR_VALUE(addr))
  goto err;

 if (args->flags & I915_MMAP_WC) {
  struct mm_struct *mm = current->mm;
  struct vm_area_struct *vma;

  if (down_write_killable(&mm->mmap_sem)) {
   addr = -EINTR;
   goto err;
  }
  vma = find_vma(mm, addr);
  if (vma && __vma_matches(vma, obj->base.filp, addr, args->size))
   vma->vm_page_prot =
    pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
  else
   addr = -ENOMEM;
  up_write(&mm->mmap_sem);
  if (IS_ERR_VALUE(addr))
   goto err;
 }
 i915_gem_object_put(obj);

 args->addr_ptr = (u64)addr;
 return 0;

err:
 i915_gem_object_put(obj);
 return addr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct amdgpu_vm {int va; } ;
struct amdgpu_device {int dev; } ;
struct amdgpu_bo_va_mapping {scalar_t__ flags; scalar_t__ offset; scalar_t__ last; scalar_t__ start; } ;
struct TYPE_2__ {struct amdgpu_vm* vm; struct amdgpu_bo* bo; } ;
struct amdgpu_bo_va {TYPE_1__ base; } ;
struct amdgpu_bo {int dummy; } ;


 scalar_t__ AMDGPU_GPU_PAGE_MASK ;
 scalar_t__ AMDGPU_GPU_PAGE_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ amdgpu_bo_size (struct amdgpu_bo*) ;
 int amdgpu_vm_bo_insert_map (struct amdgpu_device*,struct amdgpu_bo_va*,struct amdgpu_bo_va_mapping*) ;
 struct amdgpu_bo_va_mapping* amdgpu_vm_it_iter_first (int *,scalar_t__,scalar_t__) ;
 int dev_err (int ,char*,struct amdgpu_bo*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 struct amdgpu_bo_va_mapping* kmalloc (int,int ) ;

int amdgpu_vm_bo_map(struct amdgpu_device *adev,
       struct amdgpu_bo_va *bo_va,
       uint64_t saddr, uint64_t offset,
       uint64_t size, uint64_t flags)
{
 struct amdgpu_bo_va_mapping *mapping, *tmp;
 struct amdgpu_bo *bo = bo_va->base.bo;
 struct amdgpu_vm *vm = bo_va->base.vm;
 uint64_t eaddr;


 if (saddr & AMDGPU_GPU_PAGE_MASK || offset & AMDGPU_GPU_PAGE_MASK ||
     size == 0 || size & AMDGPU_GPU_PAGE_MASK)
  return -EINVAL;


 eaddr = saddr + size - 1;
 if (saddr >= eaddr ||
     (bo && offset + size > amdgpu_bo_size(bo)))
  return -EINVAL;

 saddr /= AMDGPU_GPU_PAGE_SIZE;
 eaddr /= AMDGPU_GPU_PAGE_SIZE;

 tmp = amdgpu_vm_it_iter_first(&vm->va, saddr, eaddr);
 if (tmp) {

  dev_err(adev->dev, "bo %p va 0x%010Lx-0x%010Lx conflict with "
   "0x%010Lx-0x%010Lx\n", bo, saddr, eaddr,
   tmp->start, tmp->last + 1);
  return -EINVAL;
 }

 mapping = kmalloc(sizeof(*mapping), GFP_KERNEL);
 if (!mapping)
  return -ENOMEM;

 mapping->start = saddr;
 mapping->last = eaddr;
 mapping->offset = offset;
 mapping->flags = flags;

 amdgpu_vm_bo_insert_map(adev, bo_va, mapping);

 return 0;
}

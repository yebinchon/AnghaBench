
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va_mapping {scalar_t__ flags; scalar_t__ offset; scalar_t__ last; scalar_t__ start; } ;
struct TYPE_2__ {int vm; struct amdgpu_bo* bo; } ;
struct amdgpu_bo_va {TYPE_1__ base; } ;
struct amdgpu_bo {int dummy; } ;


 scalar_t__ AMDGPU_GPU_PAGE_MASK ;
 scalar_t__ AMDGPU_GPU_PAGE_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ amdgpu_bo_size (struct amdgpu_bo*) ;
 int amdgpu_vm_bo_clear_mappings (struct amdgpu_device*,int ,scalar_t__,scalar_t__) ;
 int amdgpu_vm_bo_insert_map (struct amdgpu_device*,struct amdgpu_bo_va*,struct amdgpu_bo_va_mapping*) ;
 int kfree (struct amdgpu_bo_va_mapping*) ;
 struct amdgpu_bo_va_mapping* kmalloc (int,int ) ;

int amdgpu_vm_bo_replace_map(struct amdgpu_device *adev,
        struct amdgpu_bo_va *bo_va,
        uint64_t saddr, uint64_t offset,
        uint64_t size, uint64_t flags)
{
 struct amdgpu_bo_va_mapping *mapping;
 struct amdgpu_bo *bo = bo_va->base.bo;
 uint64_t eaddr;
 int r;


 if (saddr & AMDGPU_GPU_PAGE_MASK || offset & AMDGPU_GPU_PAGE_MASK ||
     size == 0 || size & AMDGPU_GPU_PAGE_MASK)
  return -EINVAL;


 eaddr = saddr + size - 1;
 if (saddr >= eaddr ||
     (bo && offset + size > amdgpu_bo_size(bo)))
  return -EINVAL;


 mapping = kmalloc(sizeof(*mapping), GFP_KERNEL);
 if (!mapping)
  return -ENOMEM;

 r = amdgpu_vm_bo_clear_mappings(adev, bo_va->base.vm, saddr, size);
 if (r) {
  kfree(mapping);
  return r;
 }

 saddr /= AMDGPU_GPU_PAGE_SIZE;
 eaddr /= AMDGPU_GPU_PAGE_SIZE;

 mapping->start = saddr;
 mapping->last = eaddr;
 mapping->offset = offset;
 mapping->flags = flags;

 amdgpu_vm_bo_insert_map(adev, bo_va, mapping);

 return 0;
}

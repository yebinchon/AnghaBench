
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct sysinfo {int mem_unit; scalar_t__ totalram; } ;
struct TYPE_2__ {int max_pfn; int num_level; int block_size; int fragment_size; int root_level; } ;
struct amdgpu_device {TYPE_1__ vm_manager; int dev; } ;


 unsigned int AMDGPU_GPU_PAGE_SHIFT ;
 int AMDGPU_VM_PDB0 ;
 int AMDGPU_VM_PDB1 ;
 int AMDGPU_VM_PDB2 ;
 int DIV_ROUND_UP (scalar_t__,int) ;
 int DRM_INFO (char*,unsigned int,int,int,int) ;
 int amdgpu_vm_block_size ;
 int amdgpu_vm_fragment_size ;
 int amdgpu_vm_get_block_size (int) ;
 int amdgpu_vm_size ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int,unsigned int) ;
 scalar_t__ fls64 (int) ;
 unsigned int max (unsigned int,int) ;
 void* min (unsigned int,unsigned int) ;
 void* roundup_pow_of_two (void*) ;
 int si_meminfo (struct sysinfo*) ;

void amdgpu_vm_adjust_size(struct amdgpu_device *adev, uint32_t min_vm_size,
      uint32_t fragment_size_default, unsigned max_level,
      unsigned max_bits)
{
 unsigned int max_size = 1 << (max_bits - 30);
 unsigned int vm_size;
 uint64_t tmp;


 if (amdgpu_vm_size != -1) {
  vm_size = amdgpu_vm_size;
  if (vm_size > max_size) {
   dev_warn(adev->dev, "VM size (%d) too large, max is %u GB\n",
     amdgpu_vm_size, max_size);
   vm_size = max_size;
  }
 } else {
  struct sysinfo si;
  unsigned int phys_ram_gb;
  si_meminfo(&si);
  phys_ram_gb = ((uint64_t)si.totalram * si.mem_unit +
          (1 << 30) - 1) >> 30;
  vm_size = roundup_pow_of_two(
   min(max(phys_ram_gb * 3, min_vm_size), max_size));
 }

 adev->vm_manager.max_pfn = (uint64_t)vm_size << 18;

 tmp = roundup_pow_of_two(adev->vm_manager.max_pfn);
 if (amdgpu_vm_block_size != -1)
  tmp >>= amdgpu_vm_block_size - 9;
 tmp = DIV_ROUND_UP(fls64(tmp) - 1, 9) - 1;
 adev->vm_manager.num_level = min(max_level, (unsigned)tmp);
 switch (adev->vm_manager.num_level) {
 case 3:
  adev->vm_manager.root_level = AMDGPU_VM_PDB2;
  break;
 case 2:
  adev->vm_manager.root_level = AMDGPU_VM_PDB1;
  break;
 case 1:
  adev->vm_manager.root_level = AMDGPU_VM_PDB0;
  break;
 default:
  dev_err(adev->dev, "VMPT only supports 2~4+1 levels\n");
 }

 if (amdgpu_vm_block_size != -1)
  adev->vm_manager.block_size =
   min((unsigned)amdgpu_vm_block_size, max_bits
       - AMDGPU_GPU_PAGE_SHIFT
       - 9 * adev->vm_manager.num_level);
 else if (adev->vm_manager.num_level > 1)
  adev->vm_manager.block_size = 9;
 else
  adev->vm_manager.block_size = amdgpu_vm_get_block_size(tmp);

 if (amdgpu_vm_fragment_size == -1)
  adev->vm_manager.fragment_size = fragment_size_default;
 else
  adev->vm_manager.fragment_size = amdgpu_vm_fragment_size;

 DRM_INFO("vm size is %u GB, %u levels, block size is %u-bit, fragment size is %u-bit\n",
   vm_size, adev->vm_manager.num_level + 1,
   adev->vm_manager.block_size,
   adev->vm_manager.fragment_size);
}

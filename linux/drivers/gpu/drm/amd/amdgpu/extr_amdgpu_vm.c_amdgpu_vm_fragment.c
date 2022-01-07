
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct amdgpu_vm_update_params {scalar_t__ pages_addr; TYPE_2__* adev; } ;
struct TYPE_3__ {unsigned int fragment_size; } ;
struct TYPE_4__ {scalar_t__ asic_type; TYPE_1__ vm_manager; } ;


 scalar_t__ CHIP_VEGA10 ;
 scalar_t__ ffs (unsigned long long) ;
 scalar_t__ fls64 (unsigned long long) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static void amdgpu_vm_fragment(struct amdgpu_vm_update_params *params,
          uint64_t start, uint64_t end, uint64_t flags,
          unsigned int *frag, uint64_t *frag_end)
{
 unsigned max_frag;

 if (params->adev->asic_type < CHIP_VEGA10)
  max_frag = params->adev->vm_manager.fragment_size;
 else
  max_frag = 31;


 if (params->pages_addr) {
  *frag = 0;
  *frag_end = end;
  return;
 }


 *frag = min((unsigned)ffs(start) - 1, (unsigned)fls64(end - start) - 1);
 if (*frag >= max_frag) {
  *frag = max_frag;
  *frag_end = end & ~((1ULL << max_frag) - 1);
 } else {
  *frag_end = start + (1 << *frag);
 }
}

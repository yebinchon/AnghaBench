
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct radeon_vm {TYPE_1__* page_tables; } ;
struct radeon_fence {int dummy; } ;
struct TYPE_2__ {int bo; } ;


 int radeon_bo_fence (int ,struct radeon_fence*,int) ;
 int radeon_vm_block_size ;

__attribute__((used)) static void radeon_vm_fence_pts(struct radeon_vm *vm,
    uint64_t start, uint64_t end,
    struct radeon_fence *fence)
{
 unsigned i;

 start >>= radeon_vm_block_size;
 end = (end - 1) >> radeon_vm_block_size;

 for (i = start; i <= end; ++i)
  radeon_bo_fence(vm->page_tables[i].bo, fence, 1);
}

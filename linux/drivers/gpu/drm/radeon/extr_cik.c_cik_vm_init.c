
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int nvm; int vram_base_offset; } ;
struct radeon_device {int flags; TYPE_1__ vm_manager; } ;


 int MC_VM_FB_OFFSET ;
 int RADEON_IS_IGP ;
 int RREG32 (int ) ;

int cik_vm_init(struct radeon_device *rdev)
{





 rdev->vm_manager.nvm = 16;

 if (rdev->flags & RADEON_IS_IGP) {
  u64 tmp = RREG32(MC_VM_FB_OFFSET);
  tmp <<= 22;
  rdev->vm_manager.vram_base_offset = tmp;
 } else
  rdev->vm_manager.vram_base_offset = 0;

 return 0;
}

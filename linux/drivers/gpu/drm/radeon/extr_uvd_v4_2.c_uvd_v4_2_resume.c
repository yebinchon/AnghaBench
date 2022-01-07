
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int gpu_addr; int max_handles; scalar_t__ fw_header_present; } ;
struct radeon_device {TYPE_2__ uvd; TYPE_1__* uvd_fw; } ;
struct TYPE_3__ {scalar_t__ size; } ;


 int RADEON_GPU_PAGE_ALIGN (scalar_t__) ;
 int RADEON_UVD_HEAP_SIZE ;
 int RADEON_UVD_SESSION_SIZE ;
 int RADEON_UVD_STACK_SIZE ;
 int UVD_GP_SCRATCH4 ;
 int UVD_LMI_ADDR_EXT ;
 int UVD_LMI_EXT40_ADDR ;
 int UVD_VCPU_CACHE_OFFSET0 ;
 int UVD_VCPU_CACHE_OFFSET1 ;
 int UVD_VCPU_CACHE_OFFSET2 ;
 int UVD_VCPU_CACHE_SIZE0 ;
 int UVD_VCPU_CACHE_SIZE1 ;
 int UVD_VCPU_CACHE_SIZE2 ;
 int WREG32 (int ,int) ;

int uvd_v4_2_resume(struct radeon_device *rdev)
{
 uint64_t addr;
 uint32_t size;




 if (rdev->uvd.fw_header_present)
  addr = (rdev->uvd.gpu_addr + 0x200) >> 3;
 else
  addr = rdev->uvd.gpu_addr >> 3;

 size = RADEON_GPU_PAGE_ALIGN(rdev->uvd_fw->size + 4) >> 3;
 WREG32(UVD_VCPU_CACHE_OFFSET0, addr);
 WREG32(UVD_VCPU_CACHE_SIZE0, size);

 addr += size;
 size = RADEON_UVD_HEAP_SIZE >> 3;
 WREG32(UVD_VCPU_CACHE_OFFSET1, addr);
 WREG32(UVD_VCPU_CACHE_SIZE1, size);

 addr += size;
 size = (RADEON_UVD_STACK_SIZE +
        (RADEON_UVD_SESSION_SIZE * rdev->uvd.max_handles)) >> 3;
 WREG32(UVD_VCPU_CACHE_OFFSET2, addr);
 WREG32(UVD_VCPU_CACHE_SIZE2, size);


 addr = (rdev->uvd.gpu_addr >> 28) & 0xF;
 WREG32(UVD_LMI_ADDR_EXT, (addr << 12) | (addr << 0));


 addr = (rdev->uvd.gpu_addr >> 32) & 0xFF;
 WREG32(UVD_LMI_EXT40_ADDR, addr | (0x9 << 16) | (0x1 << 31));

 if (rdev->uvd.fw_header_present)
  WREG32(UVD_GP_SCRATCH4, rdev->uvd.max_handles);

 return 0;
}

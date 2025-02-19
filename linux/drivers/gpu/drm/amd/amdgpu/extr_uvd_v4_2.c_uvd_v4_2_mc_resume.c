
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {int gb_addr_config; } ;
struct TYPE_8__ {TYPE_3__ config; } ;
struct TYPE_6__ {int max_handles; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__ uvd; } ;
struct TYPE_5__ {int gpu_addr; } ;


 int AMDGPU_UVD_FIRMWARE_OFFSET ;
 int AMDGPU_UVD_FIRMWARE_SIZE (struct amdgpu_device*) ;
 int AMDGPU_UVD_HEAP_SIZE ;
 int AMDGPU_UVD_SESSION_SIZE ;
 int AMDGPU_UVD_STACK_SIZE ;
 int WREG32 (int ,int) ;
 int mmUVD_LMI_ADDR_EXT ;
 int mmUVD_LMI_EXT40_ADDR ;
 int mmUVD_UDEC_ADDR_CONFIG ;
 int mmUVD_UDEC_DBW_ADDR_CONFIG ;
 int mmUVD_UDEC_DB_ADDR_CONFIG ;
 int mmUVD_VCPU_CACHE_OFFSET0 ;
 int mmUVD_VCPU_CACHE_OFFSET1 ;
 int mmUVD_VCPU_CACHE_OFFSET2 ;
 int mmUVD_VCPU_CACHE_SIZE0 ;
 int mmUVD_VCPU_CACHE_SIZE1 ;
 int mmUVD_VCPU_CACHE_SIZE2 ;

__attribute__((used)) static void uvd_v4_2_mc_resume(struct amdgpu_device *adev)
{
 uint64_t addr;
 uint32_t size;


 addr = (adev->uvd.inst->gpu_addr + AMDGPU_UVD_FIRMWARE_OFFSET) >> 3;
 size = AMDGPU_UVD_FIRMWARE_SIZE(adev) >> 3;
 WREG32(mmUVD_VCPU_CACHE_OFFSET0, addr);
 WREG32(mmUVD_VCPU_CACHE_SIZE0, size);

 addr += size;
 size = AMDGPU_UVD_HEAP_SIZE >> 3;
 WREG32(mmUVD_VCPU_CACHE_OFFSET1, addr);
 WREG32(mmUVD_VCPU_CACHE_SIZE1, size);

 addr += size;
 size = (AMDGPU_UVD_STACK_SIZE +
        (AMDGPU_UVD_SESSION_SIZE * adev->uvd.max_handles)) >> 3;
 WREG32(mmUVD_VCPU_CACHE_OFFSET2, addr);
 WREG32(mmUVD_VCPU_CACHE_SIZE2, size);


 addr = (adev->uvd.inst->gpu_addr >> 28) & 0xF;
 WREG32(mmUVD_LMI_ADDR_EXT, (addr << 12) | (addr << 0));


 addr = (adev->uvd.inst->gpu_addr >> 32) & 0xFF;
 WREG32(mmUVD_LMI_EXT40_ADDR, addr | (0x9 << 16) | (0x1 << 31));

 WREG32(mmUVD_UDEC_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
 WREG32(mmUVD_UDEC_DB_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
 WREG32(mmUVD_UDEC_DBW_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
}

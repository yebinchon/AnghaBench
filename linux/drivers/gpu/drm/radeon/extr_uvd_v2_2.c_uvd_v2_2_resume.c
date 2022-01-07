
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int gpu_addr; int max_handles; } ;
struct radeon_device {int family; TYPE_2__ uvd; TYPE_1__* uvd_fw; } ;
struct TYPE_3__ {scalar_t__ size; } ;
 int CHIP_RV770 ;





 int EINVAL ;
 int RADEON_GPU_PAGE_ALIGN (scalar_t__) ;
 int RADEON_UVD_HEAP_SIZE ;
 int RADEON_UVD_SESSION_SIZE ;
 int RADEON_UVD_STACK_SIZE ;
 int UVD_LMI_ADDR_EXT ;
 int UVD_LMI_EXT40_ADDR ;
 int UVD_VCPU_CACHE_OFFSET0 ;
 int UVD_VCPU_CACHE_OFFSET1 ;
 int UVD_VCPU_CACHE_OFFSET2 ;
 int UVD_VCPU_CACHE_SIZE0 ;
 int UVD_VCPU_CACHE_SIZE1 ;
 int UVD_VCPU_CACHE_SIZE2 ;
 int UVD_VCPU_CHIP_ID ;
 int WREG32 (int ,int) ;
 int radeon_uvd_resume (struct radeon_device*) ;
 int uvd_v1_0_resume (struct radeon_device*) ;

int uvd_v2_2_resume(struct radeon_device *rdev)
{
 uint64_t addr;
 uint32_t chip_id, size;
 int r;


 if (rdev->family == CHIP_RV770)
  return uvd_v1_0_resume(rdev);

 r = radeon_uvd_resume(rdev);
 if (r)
  return r;


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


 switch (rdev->family) {
 default:
  return -EINVAL;
 case 135:
  chip_id = 0x01000005;
  break;
 case 134:
  chip_id = 0x01000006;
  break;
 case 133:
  chip_id = 0x01000007;
  break;
 case 142:
 case 141:
  chip_id = 0x01000008;
  break;
 case 140:
  chip_id = 0x01000009;
  break;
 case 136:
  chip_id = 0x0100000a;
  break;
 case 143:
  chip_id = 0x0100000b;
  break;
 case 132:
 case 131:
  chip_id = 0x0100000c;
  break;
 case 138:
  chip_id = 0x0100000e;
  break;
 case 144:
  chip_id = 0x0100000f;
  break;
 case 146:
  chip_id = 0x01000010;
  break;
 case 129:
  chip_id = 0x01000011;
  break;
 case 145:
  chip_id = 0x01000012;
  break;
 case 130:
  chip_id = 0x01000014;
  break;
 case 128:
  chip_id = 0x01000015;
  break;
 case 137:
 case 139:
  chip_id = 0x01000016;
  break;
 case 147:
  chip_id = 0x01000017;
  break;
 }
 WREG32(UVD_VCPU_CHIP_ID, chip_id);

 return 0;
}

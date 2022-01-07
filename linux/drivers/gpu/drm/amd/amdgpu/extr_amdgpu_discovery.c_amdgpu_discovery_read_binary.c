
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int mmio_idx_lock; } ;


 int BINARY_MAX_SIZE ;
 scalar_t__ RREG32 (int ) ;
 int RREG32_NO_KIQ (int ) ;
 int WREG32_NO_KIQ (int ,int) ;
 int mmMM_DATA ;
 int mmMM_INDEX ;
 int mmMM_INDEX_HI ;
 int mmRCC_CONFIG_MEMSIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int amdgpu_discovery_read_binary(struct amdgpu_device *adev, uint8_t *binary)
{
 uint32_t *p = (uint32_t *)binary;
 uint64_t vram_size = (uint64_t)RREG32(mmRCC_CONFIG_MEMSIZE) << 20;
 uint64_t pos = vram_size - BINARY_MAX_SIZE;
 unsigned long flags;

 while (pos < vram_size) {
  spin_lock_irqsave(&adev->mmio_idx_lock, flags);
  WREG32_NO_KIQ(mmMM_INDEX, ((uint32_t)pos) | 0x80000000);
  WREG32_NO_KIQ(mmMM_INDEX_HI, pos >> 31);
  *p++ = RREG32_NO_KIQ(mmMM_DATA);
  spin_unlock_irqrestore(&adev->mmio_idx_lock, flags);
  pos += 4;
 }

 return 0;
}

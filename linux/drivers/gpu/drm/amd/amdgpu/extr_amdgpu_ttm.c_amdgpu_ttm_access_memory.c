
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct ttm_buffer_object {TYPE_1__ mem; } ;
struct drm_mm_node {unsigned long start; int size; } ;
struct TYPE_6__ {int mc_vram_size; } ;
struct amdgpu_device {int mmio_idx_lock; TYPE_3__ gmc; } ;
struct TYPE_5__ {int mem; int bdev; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;


 int EIO ;
 unsigned long PAGE_SHIFT ;
 int RREG32_NO_KIQ (int ) ;
 scalar_t__ TTM_PL_VRAM ;
 int WREG32_NO_KIQ (int ,int) ;
 struct drm_mm_node* amdgpu_find_mm_node (int *,unsigned long*) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int memcpy (void*,int*,int) ;
 int mmMM_DATA ;
 int mmMM_INDEX ;
 int mmMM_INDEX_HI ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct amdgpu_bo* ttm_to_amdgpu_bo (struct ttm_buffer_object*) ;

__attribute__((used)) static int amdgpu_ttm_access_memory(struct ttm_buffer_object *bo,
        unsigned long offset,
        void *buf, int len, int write)
{
 struct amdgpu_bo *abo = ttm_to_amdgpu_bo(bo);
 struct amdgpu_device *adev = amdgpu_ttm_adev(abo->tbo.bdev);
 struct drm_mm_node *nodes;
 uint32_t value = 0;
 int ret = 0;
 uint64_t pos;
 unsigned long flags;

 if (bo->mem.mem_type != TTM_PL_VRAM)
  return -EIO;

 nodes = amdgpu_find_mm_node(&abo->tbo.mem, &offset);
 pos = (nodes->start << PAGE_SHIFT) + offset;

 while (len && pos < adev->gmc.mc_vram_size) {
  uint64_t aligned_pos = pos & ~(uint64_t)3;
  uint32_t bytes = 4 - (pos & 3);
  uint32_t shift = (pos & 3) * 8;
  uint32_t mask = 0xffffffff << shift;

  if (len < bytes) {
   mask &= 0xffffffff >> (bytes - len) * 8;
   bytes = len;
  }

  spin_lock_irqsave(&adev->mmio_idx_lock, flags);
  WREG32_NO_KIQ(mmMM_INDEX, ((uint32_t)aligned_pos) | 0x80000000);
  WREG32_NO_KIQ(mmMM_INDEX_HI, aligned_pos >> 31);
  if (!write || mask != 0xffffffff)
   value = RREG32_NO_KIQ(mmMM_DATA);
  if (write) {
   value &= ~mask;
   value |= (*(uint32_t *)buf << shift) & mask;
   WREG32_NO_KIQ(mmMM_DATA, value);
  }
  spin_unlock_irqrestore(&adev->mmio_idx_lock, flags);
  if (!write) {
   value = (value & mask) >> shift;
   memcpy(buf, &value, bytes);
  }

  ret += bytes;
  buf = (uint8_t *)buf + bytes;
  pos += bytes;
  len -= bytes;
  if (pos >= (nodes->start + nodes->size) << PAGE_SHIFT) {
   ++nodes;
   pos = (nodes->start << PAGE_SHIFT);
  }
 }

 return ret;
}

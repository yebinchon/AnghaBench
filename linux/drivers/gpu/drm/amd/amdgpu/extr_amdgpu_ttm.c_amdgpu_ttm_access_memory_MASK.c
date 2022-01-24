#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct ttm_buffer_object {TYPE_1__ mem; } ;
struct drm_mm_node {unsigned long start; int size; } ;
struct TYPE_6__ {int mc_vram_size; } ;
struct amdgpu_device {int /*<<< orphan*/  mmio_idx_lock; TYPE_3__ gmc; } ;
struct TYPE_5__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;

/* Variables and functions */
 int EIO ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct drm_mm_node* FUNC2 (int /*<<< orphan*/ *,unsigned long*) ; 
 struct amdgpu_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int*,int) ; 
 int /*<<< orphan*/  mmMM_DATA ; 
 int /*<<< orphan*/  mmMM_INDEX ; 
 int /*<<< orphan*/  mmMM_INDEX_HI ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct amdgpu_bo* FUNC7 (struct ttm_buffer_object*) ; 

__attribute__((used)) static int FUNC8(struct ttm_buffer_object *bo,
				    unsigned long offset,
				    void *buf, int len, int write)
{
	struct amdgpu_bo *abo = FUNC7(bo);
	struct amdgpu_device *adev = FUNC3(abo->tbo.bdev);
	struct drm_mm_node *nodes;
	uint32_t value = 0;
	int ret = 0;
	uint64_t pos;
	unsigned long flags;

	if (bo->mem.mem_type != TTM_PL_VRAM)
		return -EIO;

	nodes = FUNC2(&abo->tbo.mem, &offset);
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

		FUNC5(&adev->mmio_idx_lock, flags);
		FUNC1(mmMM_INDEX, ((uint32_t)aligned_pos) | 0x80000000);
		FUNC1(mmMM_INDEX_HI, aligned_pos >> 31);
		if (!write || mask != 0xffffffff)
			value = FUNC0(mmMM_DATA);
		if (write) {
			value &= ~mask;
			value |= (*(uint32_t *)buf << shift) & mask;
			FUNC1(mmMM_DATA, value);
		}
		FUNC6(&adev->mmio_idx_lock, flags);
		if (!write) {
			value = (value & mask) >> shift;
			FUNC4(buf, &value, bytes);
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
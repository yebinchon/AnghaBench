#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct amdgpu_device {int /*<<< orphan*/  mmio_idx_lock; } ;

/* Variables and functions */
 int BINARY_MAX_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmMM_DATA ; 
 int /*<<< orphan*/  mmMM_INDEX ; 
 int /*<<< orphan*/  mmMM_INDEX_HI ; 
 int /*<<< orphan*/  mmRCC_CONFIG_MEMSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev, uint8_t *binary)
{
	uint32_t *p = (uint32_t *)binary;
	uint64_t vram_size = (uint64_t)FUNC0(mmRCC_CONFIG_MEMSIZE) << 20;
	uint64_t pos = vram_size - BINARY_MAX_SIZE;
	unsigned long flags;

	while (pos < vram_size) {
		FUNC3(&adev->mmio_idx_lock, flags);
		FUNC2(mmMM_INDEX, ((uint32_t)pos) | 0x80000000);
		FUNC2(mmMM_INDEX_HI, pos >> 31);
		*p++ = FUNC1(mmMM_DATA);
		FUNC4(&adev->mmio_idx_lock, flags);
		pos += 4;
	}

	return 0;
}
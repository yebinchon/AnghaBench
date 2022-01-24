#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int gpu_addr; int max_handles; scalar_t__ cpu_addr; } ;
struct radeon_device {TYPE_2__ uvd; TYPE_1__* uvd_fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RADEON_UVD_HEAP_SIZE ; 
 int RADEON_UVD_SESSION_SIZE ; 
 int RADEON_UVD_STACK_SIZE ; 
 int /*<<< orphan*/  UVD_FW_START ; 
 int /*<<< orphan*/  UVD_LMI_ADDR_EXT ; 
 int /*<<< orphan*/  UVD_LMI_EXT40_ADDR ; 
 int /*<<< orphan*/  UVD_VCPU_CACHE_OFFSET0 ; 
 int /*<<< orphan*/  UVD_VCPU_CACHE_OFFSET1 ; 
 int /*<<< orphan*/  UVD_VCPU_CACHE_OFFSET2 ; 
 int /*<<< orphan*/  UVD_VCPU_CACHE_SIZE0 ; 
 int /*<<< orphan*/  UVD_VCPU_CACHE_SIZE1 ; 
 int /*<<< orphan*/  UVD_VCPU_CACHE_SIZE2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*) ; 

int FUNC3(struct radeon_device *rdev)
{
	uint64_t addr;
	uint32_t size;
	int r;

	r = FUNC2(rdev);
	if (r)
		return r;

	/* programm the VCPU memory controller bits 0-27 */
	addr = (rdev->uvd.gpu_addr >> 3) + 16;
	size = FUNC0(rdev->uvd_fw->size) >> 3;
	FUNC1(UVD_VCPU_CACHE_OFFSET0, addr);
	FUNC1(UVD_VCPU_CACHE_SIZE0, size);

	addr += size;
	size = RADEON_UVD_HEAP_SIZE >> 3;
	FUNC1(UVD_VCPU_CACHE_OFFSET1, addr);
	FUNC1(UVD_VCPU_CACHE_SIZE1, size);

	addr += size;
	size = (RADEON_UVD_STACK_SIZE +
	       (RADEON_UVD_SESSION_SIZE * rdev->uvd.max_handles)) >> 3;
	FUNC1(UVD_VCPU_CACHE_OFFSET2, addr);
	FUNC1(UVD_VCPU_CACHE_SIZE2, size);

	/* bits 28-31 */
	addr = (rdev->uvd.gpu_addr >> 28) & 0xF;
	FUNC1(UVD_LMI_ADDR_EXT, (addr << 12) | (addr << 0));

	/* bits 32-39 */
	addr = (rdev->uvd.gpu_addr >> 32) & 0xFF;
	FUNC1(UVD_LMI_EXT40_ADDR, addr | (0x9 << 16) | (0x1 << 31));

	FUNC1(UVD_FW_START, *((uint32_t*)rdev->uvd.cpu_addr));

	return 0;
}
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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {scalar_t__ rlc_autoload_gpu_addr; } ;
struct TYPE_5__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ME_IC_OP_CNTL ; 
 int EINVAL ; 
 size_t FIRMWARE_ID_CP_ME ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  INVALIDATE_CACHE ; 
 int /*<<< orphan*/  INVALIDATE_CACHE_COMPLETE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  mmCP_ME_IC_BASE_HI ; 
 int /*<<< orphan*/  mmCP_ME_IC_BASE_LO ; 
 int /*<<< orphan*/  mmCP_ME_IC_OP_CNTL ; 
 TYPE_3__* rlc_autoload_info ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	uint32_t usec_timeout = 50000;  /* wait for 50ms */
	uint32_t tmp;
	int i;
	uint64_t addr;

	/* Trigger an invalidation of the L1 instruction caches */
	tmp = FUNC2(GC, 0, mmCP_ME_IC_OP_CNTL);
	tmp = FUNC1(tmp, CP_ME_IC_OP_CNTL, INVALIDATE_CACHE, 1);
	FUNC3(GC, 0, mmCP_ME_IC_OP_CNTL, tmp);

	/* Wait for invalidation complete */
	for (i = 0; i < usec_timeout; i++) {
		tmp = FUNC2(GC, 0, mmCP_ME_IC_OP_CNTL);
		if (1 == FUNC0(tmp, CP_ME_IC_OP_CNTL,
			INVALIDATE_CACHE_COMPLETE))
			break;
		FUNC6(1);
	}

	if (i >= usec_timeout) {
		FUNC4(adev->dev, "failed to invalidate instruction cache\n");
		return -EINVAL;
	}

	/* Program me ucode address into intruction cache address register */
	addr = adev->gfx.rlc.rlc_autoload_gpu_addr +
		rlc_autoload_info[FIRMWARE_ID_CP_ME].offset;
	FUNC3(GC, 0, mmCP_ME_IC_BASE_LO,
			FUNC5(addr) & 0xFFFFF000);
	FUNC3(GC, 0, mmCP_ME_IC_BASE_HI,
			FUNC7(addr));

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  data_fw_gpu_addr; int /*<<< orphan*/  ucode_fw_gpu_addr; scalar_t__ uc_start_addr; int /*<<< orphan*/  fw; } ;
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; TYPE_1__ mes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_MES_IC_OP_CNTL ; 
 int EINVAL ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  INVALIDATE_CACHE ; 
 int /*<<< orphan*/  PRIME_ICACHE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmCP_MES_IC_BASE_CNTL ; 
 int /*<<< orphan*/  mmCP_MES_IC_BASE_HI ; 
 int /*<<< orphan*/  mmCP_MES_IC_BASE_LO ; 
 int /*<<< orphan*/  mmCP_MES_IC_OP_CNTL ; 
 int /*<<< orphan*/  mmCP_MES_MDBASE_HI ; 
 int /*<<< orphan*/  mmCP_MES_MDBASE_LO ; 
 int /*<<< orphan*/  mmCP_MES_MDBOUND_LO ; 
 int /*<<< orphan*/  mmCP_MES_MIBOUND_LO ; 
 int /*<<< orphan*/  mmCP_MES_PRGRM_CNTR_START ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_device *adev)
{
	int r;
	uint32_t data;

	if (!adev->mes.fw)
		return -EINVAL;

	r = FUNC4(adev);
	if (r)
		return r;

	r = FUNC5(adev);
	if (r) {
		FUNC7(adev);
		return r;
	}

	FUNC6(adev, false);

	FUNC2(GC, 0, mmCP_MES_IC_BASE_CNTL, 0);

	FUNC8(&adev->srbm_mutex);
	/* me=3, pipe=0, queue=0 */
	FUNC10(adev, 3, 0, 0, 0);

	/* set ucode start address */
	FUNC2(GC, 0, mmCP_MES_PRGRM_CNTR_START,
		     (uint32_t)(adev->mes.uc_start_addr) >> 2);

	/* set ucode fimrware address */
	FUNC2(GC, 0, mmCP_MES_IC_BASE_LO,
		     FUNC3(adev->mes.ucode_fw_gpu_addr));
	FUNC2(GC, 0, mmCP_MES_IC_BASE_HI,
		     FUNC11(adev->mes.ucode_fw_gpu_addr));

	/* set ucode instruction cache boundary to 2M-1 */
	FUNC2(GC, 0, mmCP_MES_MIBOUND_LO, 0x1FFFFF);

	/* set ucode data firmware address */
	FUNC2(GC, 0, mmCP_MES_MDBASE_LO,
		     FUNC3(adev->mes.data_fw_gpu_addr));
	FUNC2(GC, 0, mmCP_MES_MDBASE_HI,
		     FUNC11(adev->mes.data_fw_gpu_addr));

	/* Set 0x3FFFF (256K-1) to CP_MES_MDBOUND_LO */
	FUNC2(GC, 0, mmCP_MES_MDBOUND_LO, 0x3FFFF);

	/* invalidate ICACHE */
	data = FUNC1(GC, 0, mmCP_MES_IC_OP_CNTL);
	data = FUNC0(data, CP_MES_IC_OP_CNTL, PRIME_ICACHE, 0);
	data = FUNC0(data, CP_MES_IC_OP_CNTL, INVALIDATE_CACHE, 1);
	FUNC2(GC, 0, mmCP_MES_IC_OP_CNTL, data);

	/* prime the ICACHE. */
	data = FUNC1(GC, 0, mmCP_MES_IC_OP_CNTL);
	data = FUNC0(data, CP_MES_IC_OP_CNTL, PRIME_ICACHE, 1);
	FUNC2(GC, 0, mmCP_MES_IC_OP_CNTL, data);

	FUNC10(adev, 0, 0, 0, 0);
	FUNC9(&adev->srbm_mutex);

	return 0;
}
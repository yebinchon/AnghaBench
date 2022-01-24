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
struct TYPE_2__ {scalar_t__ uc_start_addr; } ;
struct amdgpu_device {TYPE_1__ mes; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYPASS_UNCACHED ; 
 int /*<<< orphan*/  CP_MES_CNTL ; 
 int /*<<< orphan*/  CP_MES_DC_OP_CNTL ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  MES_HALT ; 
 int /*<<< orphan*/  MES_INVALIDATE_ICACHE ; 
 int /*<<< orphan*/  MES_PIPE0_ACTIVE ; 
 int /*<<< orphan*/  MES_PIPE0_RESET ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmCP_MES_CNTL ; 
 int /*<<< orphan*/  mmCP_MES_DC_OP_CNTL ; 
 int /*<<< orphan*/  mmCP_MES_PRGRM_CNTR_START ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev, bool enable)
{
	uint32_t data = 0;

	if (enable) {
		data = FUNC1(GC, 0, mmCP_MES_CNTL);
		data = FUNC0(data, CP_MES_CNTL, MES_PIPE0_RESET, 1);
		FUNC2(GC, 0, mmCP_MES_CNTL, data);

		/* set ucode start address */
		FUNC2(GC, 0, mmCP_MES_PRGRM_CNTR_START,
			     (uint32_t)(adev->mes.uc_start_addr) >> 2);

		/* clear BYPASS_UNCACHED to avoid hangs after interrupt. */
		data = FUNC1(GC, 0, mmCP_MES_DC_OP_CNTL);
		data = FUNC0(data, CP_MES_DC_OP_CNTL,
				     BYPASS_UNCACHED, 0);
		FUNC2(GC, 0, mmCP_MES_DC_OP_CNTL, data);

		/* unhalt MES and activate pipe0 */
		data = FUNC0(0, CP_MES_CNTL, MES_PIPE0_ACTIVE, 1);
		FUNC2(GC, 0, mmCP_MES_CNTL, data);
	} else {
		data = FUNC1(GC, 0, mmCP_MES_CNTL);
		data = FUNC0(data, CP_MES_CNTL, MES_PIPE0_ACTIVE, 0);
		data = FUNC0(data, CP_MES_CNTL,
				     MES_INVALIDATE_ICACHE, 1);
		data = FUNC0(data, CP_MES_CNTL, MES_PIPE0_RESET, 1);
		data = FUNC0(data, CP_MES_CNTL, MES_HALT, 1);
		FUNC2(GC, 0, mmCP_MES_CNTL, data);
	}
}
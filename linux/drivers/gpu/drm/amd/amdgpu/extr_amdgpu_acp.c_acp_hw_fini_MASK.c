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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_3__* acp_cell; TYPE_3__* acp_genpd; TYPE_3__* acp_res; int /*<<< orphan*/  parent; int /*<<< orphan*/  cgs_device; } ;
struct amdgpu_device {TYPE_2__ acp; TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ ACP_CLOCK_EN_TIME_OUT_VALUE ; 
 scalar_t__ ACP_CONTROL__ClkEn_MASK ; 
 int ACP_DEVS ; 
 scalar_t__ ACP_SOFT_RESET_DONE_TIME_OUT_VALUE ; 
 scalar_t__ ACP_SOFT_RESET__SoftResetAudDone_MASK ; 
 scalar_t__ ACP_SOFT_RESET__SoftResetAud_MASK ; 
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_ACP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmACP_CONTROL ; 
 int /*<<< orphan*/  mmACP_SOFT_RESET ; 
 int /*<<< orphan*/  mmACP_STATUS ; 
 int FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(void *handle)
{
	int i, ret;
	u32 val = 0;
	u32 count = 0;
	struct device *dev;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	/* return early if no ACP */
	if (!adev->acp.acp_genpd) {
		FUNC0(adev, AMD_IP_BLOCK_TYPE_ACP, false);
		return 0;
	}

	/* Assert Soft reset of ACP */
	val = FUNC1(adev->acp.cgs_device, mmACP_SOFT_RESET);

	val |= ACP_SOFT_RESET__SoftResetAud_MASK;
	FUNC2(adev->acp.cgs_device, mmACP_SOFT_RESET, val);

	count = ACP_SOFT_RESET_DONE_TIME_OUT_VALUE;
	while (true) {
		val = FUNC1(adev->acp.cgs_device, mmACP_SOFT_RESET);
		if (ACP_SOFT_RESET__SoftResetAudDone_MASK ==
		    (val & ACP_SOFT_RESET__SoftResetAudDone_MASK))
			break;
		if (--count == 0) {
			FUNC3(&adev->pdev->dev, "Failed to reset ACP\n");
			return -ETIMEDOUT;
		}
		FUNC8(100);
	}
	/* Disable ACP clock */
	val = FUNC1(adev->acp.cgs_device, mmACP_CONTROL);
	val &= ~ACP_CONTROL__ClkEn_MASK;
	FUNC2(adev->acp.cgs_device, mmACP_CONTROL, val);

	count = ACP_CLOCK_EN_TIME_OUT_VALUE;

	while (true) {
		val = FUNC1(adev->acp.cgs_device, mmACP_STATUS);
		if (val & (u32) 0x1)
			break;
		if (--count == 0) {
			FUNC3(&adev->pdev->dev, "Failed to reset ACP\n");
			return -ETIMEDOUT;
		}
		FUNC8(100);
	}

	for (i = 0; i < ACP_DEVS ; i++) {
		dev = FUNC4(adev->acp.acp_cell[i].name, i);
		ret = FUNC7(dev);
		/* If removal fails, dont giveup and try rest */
		if (ret)
			FUNC3(dev, "remove dev from genpd failed\n");
	}

	FUNC6(adev->acp.parent);
	FUNC5(adev->acp.acp_res);
	FUNC5(adev->acp.acp_genpd);
	FUNC5(adev->acp.acp_cell);

	return 0;
}
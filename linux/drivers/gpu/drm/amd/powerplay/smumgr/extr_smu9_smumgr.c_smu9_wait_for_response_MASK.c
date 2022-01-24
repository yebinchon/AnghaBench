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
typedef  scalar_t__ uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP1 ; 
 int /*<<< orphan*/  MP1_C2PMSG_90__CONTENT_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMP1_SMN_C2PMSG_90 ; 
 scalar_t__ FUNC2 (struct pp_hwmgr*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static uint32_t FUNC4(struct pp_hwmgr *hwmgr)
{
	struct amdgpu_device *adev = hwmgr->adev;
	uint32_t reg;
	uint32_t ret;

	reg = FUNC1(MP1, 0, mmMP1_SMN_C2PMSG_90);

	ret = FUNC2(hwmgr, reg,
			0, MP1_C2PMSG_90__CONTENT_MASK);

	if (ret)
		FUNC3("No response from smu\n");

	return FUNC0(MP1, 0, mmMP1_SMN_C2PMSG_90);
}
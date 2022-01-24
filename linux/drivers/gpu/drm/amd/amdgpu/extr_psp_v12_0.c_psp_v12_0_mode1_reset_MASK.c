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
typedef  int /*<<< orphan*/  uint32_t ;
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFX_CTRL_CMD_ID_MODE1_RST ; 
 int /*<<< orphan*/  MP0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_33 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_64 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct psp_context*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct psp_context *psp)
{
	int ret;
	uint32_t offset;
	struct amdgpu_device *adev = psp->adev;

	offset = FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_64);

	ret = FUNC4(psp, offset, 0x80000000, 0x8000FFFF, false);

	if (ret) {
		FUNC0("psp is not working correctly before mode1 reset!\n");
		return -EINVAL;
	}

	/*send the mode 1 reset command*/
	FUNC2(offset, GFX_CTRL_CMD_ID_MODE1_RST);

	FUNC3(500);

	offset = FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_33);

	ret = FUNC4(psp, offset, 0x80000000, 0x80000000, false);

	if (ret) {
		FUNC0("psp mode 1 reset failed!\n");
		return -EINVAL;
	}

	FUNC0("psp mode1 reset succeed \n");

	return 0;
}
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
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ rlc; int /*<<< orphan*/  sq_irq; int /*<<< orphan*/  cp_ecc_error_irq; int /*<<< orphan*/  priv_inst_irq; int /*<<< orphan*/  priv_reg_irq; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC12(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC2(adev, &adev->gfx.priv_reg_irq, 0);
	FUNC2(adev, &adev->gfx.priv_inst_irq, 0);

	FUNC2(adev, &adev->gfx.cp_ecc_error_irq, 0);

	FUNC2(adev, &adev->gfx.sq_irq, 0);

	/* disable KCQ to avoid CPC touch memory not valid anymore */
	FUNC6(adev);

	if (FUNC3(adev)) {
		FUNC9("For SRIOV client, shouldn't do anything.\n");
		return 0;
	}
	FUNC0(adev);
	if (!FUNC7(adev))
		FUNC4(adev, false);
	else
		FUNC10("cp is busy, skip halt cp\n");
	if (!FUNC8(adev))
		adev->gfx.rlc.funcs->stop(adev);
	else
		FUNC10("rlc is busy, skip halt rlc\n");
	FUNC1(adev);

	FUNC5(adev);

	return 0;
}
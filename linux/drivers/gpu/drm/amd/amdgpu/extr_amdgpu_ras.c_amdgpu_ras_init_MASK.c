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
struct ras_manager {int dummy; } ;
struct amdgpu_ras {int /*<<< orphan*/  supported; int /*<<< orphan*/  hw_supported; int /*<<< orphan*/  flags; int /*<<< orphan*/  head; scalar_t__ features; struct ras_manager* objs; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct amdgpu_device {TYPE_2__ umc; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ras_init ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int AMDGPU_RAS_BLOCK_COUNT ; 
 int /*<<< orphan*/  AMDGPU_RAS_BLOCK_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RAS_DEFAULT_FLAGS ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 struct amdgpu_ras* FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  amdgpu_ras_mask ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 scalar_t__ FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,struct amdgpu_ras*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_ras*) ; 
 struct amdgpu_ras* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 

int FUNC11(struct amdgpu_device *adev)
{
	struct amdgpu_ras *con = FUNC4(adev);

	if (con)
		return 0;

	con = FUNC9(sizeof(struct amdgpu_ras) +
			sizeof(struct ras_manager) * AMDGPU_RAS_BLOCK_COUNT,
			GFP_KERNEL|__GFP_ZERO);
	if (!con)
		return -ENOMEM;

	con->objs = (struct ras_manager *)(con + 1);

	FUNC7(adev, con);

	FUNC2(adev, &con->hw_supported,
			&con->supported);
	if (!con->hw_supported) {
		FUNC7(adev, NULL);
		FUNC8(con);
		return 0;
	}

	con->features = 0;
	FUNC1(&con->head);
	/* Might need get this flag from vbios. */
	con->flags = RAS_DEFAULT_FLAGS;

	if (FUNC6(adev))
		goto recovery_out;

	amdgpu_ras_mask &= AMDGPU_RAS_BLOCK_MASK;

	if (FUNC3(adev))
		goto fs_out;

	/* ras init for each ras block */
	if (adev->umc.funcs->ras_init)
		adev->umc.funcs->ras_init(adev);

	FUNC0("RAS INFO: ras initialized successfully, "
			"hardware ability[%x] ras_mask[%x]\n",
			con->hw_supported, con->supported);
	return 0;
fs_out:
	FUNC5(adev);
recovery_out:
	FUNC7(adev, NULL);
	FUNC8(con);

	return -EINVAL;
}
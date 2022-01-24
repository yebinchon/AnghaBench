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
typedef  int uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_CG_STATE_UNGATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int,int) ; 
 int FUNC4 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*) ; 
 int FUNC6 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_SEMA_CNTL ; 
 int /*<<< orphan*/  mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL ; 
 int /*<<< orphan*/  mmUVD_SEMA_TIMEOUT_STATUS ; 
 int /*<<< orphan*/  mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL ; 
 int /*<<< orphan*/  mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct amdgpu_ring *ring = &adev->uvd.inst->ring;
	uint32_t tmp;
	int r;

	FUNC3(adev, 10000, 10000);
	FUNC9(adev, AMD_CG_STATE_UNGATE);
	FUNC8(adev, true);

	r = FUNC6(ring);
	if (r)
		goto done;

	r = FUNC4(ring, 10);
	if (r) {
		FUNC0("amdgpu: ring failed to lock UVD ring (%d).\n", r);
		goto done;
	}

	tmp = FUNC2(mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, 0);
	FUNC7(ring, tmp);
	FUNC7(ring, 0xFFFFF);

	tmp = FUNC2(mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, 0);
	FUNC7(ring, tmp);
	FUNC7(ring, 0xFFFFF);

	tmp = FUNC2(mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, 0);
	FUNC7(ring, tmp);
	FUNC7(ring, 0xFFFFF);

	/* Clear timeout status bits */
	FUNC7(ring, FUNC2(mmUVD_SEMA_TIMEOUT_STATUS, 0));
	FUNC7(ring, 0x8);

	FUNC7(ring, FUNC2(mmUVD_SEMA_CNTL, 0));
	FUNC7(ring, 3);

	FUNC5(ring);

done:
	if (!r)
		FUNC1("UVD initialized successfully.\n");

	return r;

}
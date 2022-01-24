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
struct TYPE_4__ {int num_uvd_inst; int harvest_config; int num_enc_rings; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {struct amdgpu_ring* ring_enc; struct amdgpu_ring ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int FUNC4 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*) ; 
 int FUNC6 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*,int) ; 
 scalar_t__ FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmUVD_SEMA_CNTL ; 
 int /*<<< orphan*/  mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL ; 
 int /*<<< orphan*/  mmUVD_SEMA_TIMEOUT_STATUS ; 
 int /*<<< orphan*/  mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL ; 
 int /*<<< orphan*/  mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL ; 
 int FUNC9 (struct amdgpu_device*) ; 
 int FUNC10 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC11(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct amdgpu_ring *ring;
	uint32_t tmp;
	int i, j, r;

	if (FUNC8(adev))
		r = FUNC9(adev);
	else
		r = FUNC10(adev);
	if (r)
		goto done;

	for (j = 0; j < adev->uvd.num_uvd_inst; ++j) {
		if (adev->uvd.harvest_config & (1 << j))
			continue;
		ring = &adev->uvd.inst[j].ring;

		if (!FUNC8(adev)) {
			r = FUNC6(ring);
			if (r)
				goto done;

			r = FUNC4(ring, 10);
			if (r) {
				FUNC0("amdgpu: (%d)ring failed to lock UVD ring (%d).\n", j, r);
				goto done;
			}

			tmp = FUNC2(FUNC3(UVD, j,
				mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL), 0);
			FUNC7(ring, tmp);
			FUNC7(ring, 0xFFFFF);

			tmp = FUNC2(FUNC3(UVD, j,
				mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL), 0);
			FUNC7(ring, tmp);
			FUNC7(ring, 0xFFFFF);

			tmp = FUNC2(FUNC3(UVD, j,
				mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL), 0);
			FUNC7(ring, tmp);
			FUNC7(ring, 0xFFFFF);

			/* Clear timeout status bits */
			FUNC7(ring, FUNC2(FUNC3(UVD, j,
				mmUVD_SEMA_TIMEOUT_STATUS), 0));
			FUNC7(ring, 0x8);

			FUNC7(ring, FUNC2(FUNC3(UVD, j,
				mmUVD_SEMA_CNTL), 0));
			FUNC7(ring, 3);

			FUNC5(ring);
		}

		for (i = 0; i < adev->uvd.num_enc_rings; ++i) {
			ring = &adev->uvd.inst[j].ring_enc[i];
			r = FUNC6(ring);
			if (r)
				goto done;
		}
	}
done:
	if (!r)
		FUNC1("UVD and UVD ENC initialized successfully.\n");

	return r;
}
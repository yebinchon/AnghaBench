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
typedef  int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  idx; struct amdgpu_device* adev; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct amdgpu_device {int dummy; } ;
typedef  int /*<<< orphan*/  ib ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 long EINVAL ; 
 long ETIMEDOUT ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_UCONFIG_REG ; 
 int PACKET3_SET_UCONFIG_REG_START ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 long FUNC6 (struct amdgpu_device*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,struct amdgpu_ib*,int /*<<< orphan*/ *) ; 
 long FUNC8 (struct amdgpu_device*,int /*<<< orphan*/ *,int,struct amdgpu_ib*) ; 
 long FUNC9 (struct amdgpu_ring*,int,struct amdgpu_ib*,int /*<<< orphan*/ *,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_fence*) ; 
 long FUNC11 (struct dma_fence*,int,long) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_ib*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct amdgpu_ring *ring, long timeout)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_ib ib;
	struct dma_fence *f = NULL;
	uint32_t scratch;
	uint32_t tmp = 0;
	long r;

	r = FUNC6(adev, &scratch);
	if (r) {
		FUNC0("amdgpu: failed to get scratch reg (%ld).\n", r);
		return r;
	}

	FUNC4(scratch, 0xCAFEDEAD);

	FUNC12(&ib, 0, sizeof(ib));
	r = FUNC8(adev, NULL, 256, &ib);
	if (r) {
		FUNC0("amdgpu: failed to get ib (%ld).\n", r);
		goto err1;
	}

	ib.ptr[0] = FUNC2(PACKET3_SET_UCONFIG_REG, 1);
	ib.ptr[1] = ((scratch - PACKET3_SET_UCONFIG_REG_START));
	ib.ptr[2] = 0xDEADBEEF;
	ib.length_dw = 3;

	r = FUNC9(ring, 1, &ib, NULL, &f);
	if (r)
		goto err2;

	r = FUNC11(f, false, timeout);
	if (r == 0) {
		FUNC0("amdgpu: IB test timed out.\n");
		r = -ETIMEDOUT;
		goto err2;
	} else if (r < 0) {
		FUNC0("amdgpu: fence wait failed (%ld).\n", r);
		goto err2;
	}

	tmp = FUNC3(scratch);
	if (tmp == 0xDEADBEEF) {
		FUNC1("ib test on ring %d succeeded\n", ring->idx);
		r = 0;
	} else {
		FUNC0("amdgpu: ib test failed (scratch(0x%04X)=0x%08X)\n",
			  scratch, tmp);
		r = -EINVAL;
	}
err2:
	FUNC7(adev, &ib, NULL);
	FUNC10(f);
err1:
	FUNC5(adev, scratch);

	return r;
}
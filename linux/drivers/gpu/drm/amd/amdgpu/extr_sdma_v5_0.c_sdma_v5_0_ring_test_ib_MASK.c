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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  idx; struct amdgpu_device* adev; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ib ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 long EINVAL ; 
 long ETIMEDOUT ; 
 int /*<<< orphan*/  SDMA_OP_NOP ; 
 int /*<<< orphan*/  SDMA_OP_WRITE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_SUBOP_WRITE_LINEAR ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,unsigned int) ; 
 long FUNC7 (struct amdgpu_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,struct amdgpu_ib*,int /*<<< orphan*/ *) ; 
 long FUNC9 (struct amdgpu_device*,int /*<<< orphan*/ *,int,struct amdgpu_ib*) ; 
 long FUNC10 (struct amdgpu_ring*,int,struct amdgpu_ib*,int /*<<< orphan*/ *,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC13 (struct dma_fence*) ; 
 long FUNC14 (struct dma_fence*,int,long) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct amdgpu_ib*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct amdgpu_ring *ring, long timeout)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_ib ib;
	struct dma_fence *f = NULL;
	unsigned index;
	long r;
	u32 tmp = 0;
	u64 gpu_addr;

	r = FUNC7(adev, &index);
	if (r) {
		FUNC12(adev->dev, "(%ld) failed to allocate wb slot\n", r);
		return r;
	}

	gpu_addr = adev->wb.gpu_addr + (index * 4);
	tmp = 0xCAFEDEAD;
	adev->wb.wb[index] = FUNC11(tmp);
	FUNC17(&ib, 0, sizeof(ib));
	r = FUNC9(adev, NULL, 256, &ib);
	if (r) {
		FUNC0("amdgpu: failed to get ib (%ld).\n", r);
		goto err0;
	}

	ib.ptr[0] = FUNC2(SDMA_OP_WRITE) |
		FUNC3(SDMA_SUBOP_WRITE_LINEAR);
	ib.ptr[1] = FUNC16(gpu_addr);
	ib.ptr[2] = FUNC18(gpu_addr);
	ib.ptr[3] = FUNC5(0);
	ib.ptr[4] = 0xDEADBEEF;
	ib.ptr[5] = FUNC4(SDMA_OP_NOP);
	ib.ptr[6] = FUNC4(SDMA_OP_NOP);
	ib.ptr[7] = FUNC4(SDMA_OP_NOP);
	ib.length_dw = 8;

	r = FUNC10(ring, 1, &ib, NULL, &f);
	if (r)
		goto err1;

	r = FUNC14(f, false, timeout);
	if (r == 0) {
		FUNC0("amdgpu: IB test timed out\n");
		r = -ETIMEDOUT;
		goto err1;
	} else if (r < 0) {
		FUNC0("amdgpu: fence wait failed (%ld).\n", r);
		goto err1;
	}
	tmp = FUNC15(adev->wb.wb[index]);
	if (tmp == 0xDEADBEEF) {
		FUNC1("ib test on ring %d succeeded\n", ring->idx);
		r = 0;
	} else {
		FUNC0("amdgpu: ib test failed (0x%08X)\n", tmp);
		r = -EINVAL;
	}

err1:
	FUNC8(adev, &ib, NULL);
	FUNC13(f);
err0:
	FUNC6(adev, index);
	return r;
}
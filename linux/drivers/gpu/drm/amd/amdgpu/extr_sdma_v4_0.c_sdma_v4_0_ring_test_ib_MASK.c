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
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; } ;
typedef  int /*<<< orphan*/  ib ;

/* Variables and functions */
 long EINVAL ; 
 long ETIMEDOUT ; 
 int /*<<< orphan*/  SDMA_OP_NOP ; 
 int /*<<< orphan*/  SDMA_OP_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_SUBOP_WRITE_LINEAR ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,unsigned int) ; 
 long FUNC5 (struct amdgpu_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,struct amdgpu_ib*,int /*<<< orphan*/ *) ; 
 long FUNC7 (struct amdgpu_device*,int /*<<< orphan*/ *,int,struct amdgpu_ib*) ; 
 long FUNC8 (struct amdgpu_ring*,int,struct amdgpu_ib*,int /*<<< orphan*/ *,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_fence*) ; 
 long FUNC11 (struct dma_fence*,int,long) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_ib*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct amdgpu_ring *ring, long timeout)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_ib ib;
	struct dma_fence *f = NULL;
	unsigned index;
	long r;
	u32 tmp = 0;
	u64 gpu_addr;

	r = FUNC5(adev, &index);
	if (r)
		return r;

	gpu_addr = adev->wb.gpu_addr + (index * 4);
	tmp = 0xCAFEDEAD;
	adev->wb.wb[index] = FUNC9(tmp);
	FUNC14(&ib, 0, sizeof(ib));
	r = FUNC7(adev, NULL, 256, &ib);
	if (r)
		goto err0;

	ib.ptr[0] = FUNC0(SDMA_OP_WRITE) |
		FUNC1(SDMA_SUBOP_WRITE_LINEAR);
	ib.ptr[1] = FUNC13(gpu_addr);
	ib.ptr[2] = FUNC15(gpu_addr);
	ib.ptr[3] = FUNC3(0);
	ib.ptr[4] = 0xDEADBEEF;
	ib.ptr[5] = FUNC2(SDMA_OP_NOP);
	ib.ptr[6] = FUNC2(SDMA_OP_NOP);
	ib.ptr[7] = FUNC2(SDMA_OP_NOP);
	ib.length_dw = 8;

	r = FUNC8(ring, 1, &ib, NULL, &f);
	if (r)
		goto err1;

	r = FUNC11(f, false, timeout);
	if (r == 0) {
		r = -ETIMEDOUT;
		goto err1;
	} else if (r < 0) {
		goto err1;
	}
	tmp = FUNC12(adev->wb.wb[index]);
	if (tmp == 0xDEADBEEF)
		r = 0;
	else
		r = -EINVAL;

err1:
	FUNC6(adev, &ib, NULL);
	FUNC10(f);
err0:
	FUNC4(adev, index);
	return r;
}
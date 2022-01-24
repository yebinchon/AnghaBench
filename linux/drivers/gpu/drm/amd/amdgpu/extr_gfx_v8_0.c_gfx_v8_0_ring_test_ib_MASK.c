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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct TYPE_2__ {int* wb; scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; } ;
typedef  int /*<<< orphan*/  ib ;

/* Variables and functions */
 long EINVAL ; 
 long ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 int FUNC1 (int) ; 
 int WR_CONFIRM ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,unsigned int) ; 
 long FUNC3 (struct amdgpu_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,struct amdgpu_ib*,int /*<<< orphan*/ *) ; 
 long FUNC5 (struct amdgpu_device*,int /*<<< orphan*/ *,int,struct amdgpu_ib*) ; 
 long FUNC6 (struct amdgpu_ring*,int,struct amdgpu_ib*,int /*<<< orphan*/ *,struct dma_fence**) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_fence*) ; 
 long FUNC9 (struct dma_fence*,int,long) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_ib*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct amdgpu_ring *ring, long timeout)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_ib ib;
	struct dma_fence *f = NULL;

	unsigned int index;
	uint64_t gpu_addr;
	uint32_t tmp;
	long r;

	r = FUNC3(adev, &index);
	if (r)
		return r;

	gpu_addr = adev->wb.gpu_addr + (index * 4);
	adev->wb.wb[index] = FUNC7(0xCAFEDEAD);
	FUNC11(&ib, 0, sizeof(ib));
	r = FUNC5(adev, NULL, 16, &ib);
	if (r)
		goto err1;

	ib.ptr[0] = FUNC0(PACKET3_WRITE_DATA, 3);
	ib.ptr[1] = FUNC1(5) | WR_CONFIRM;
	ib.ptr[2] = FUNC10(gpu_addr);
	ib.ptr[3] = FUNC12(gpu_addr);
	ib.ptr[4] = 0xDEADBEEF;
	ib.length_dw = 5;

	r = FUNC6(ring, 1, &ib, NULL, &f);
	if (r)
		goto err2;

	r = FUNC9(f, false, timeout);
	if (r == 0) {
		r = -ETIMEDOUT;
		goto err2;
	} else if (r < 0) {
		goto err2;
	}

	tmp = adev->wb.wb[index];
	if (tmp == 0xDEADBEEF)
		r = 0;
	else
		r = -EINVAL;

err2:
	FUNC4(adev, &ib, NULL);
	FUNC8(f);
err1:
	FUNC2(adev, index);
	return r;
}
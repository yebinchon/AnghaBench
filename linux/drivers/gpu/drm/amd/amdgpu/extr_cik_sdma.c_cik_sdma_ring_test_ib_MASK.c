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
 int /*<<< orphan*/  SDMA_OPCODE_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_WRITE_SUB_OPCODE_LINEAR ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,unsigned int) ; 
 long FUNC2 (struct amdgpu_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,struct amdgpu_ib*,int /*<<< orphan*/ *) ; 
 long FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ *,int,struct amdgpu_ib*) ; 
 long FUNC5 (struct amdgpu_ring*,int,struct amdgpu_ib*,int /*<<< orphan*/ *,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_fence*) ; 
 long FUNC8 (struct dma_fence*,int,long) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_ib*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct amdgpu_ring *ring, long timeout)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_ib ib;
	struct dma_fence *f = NULL;
	unsigned index;
	u32 tmp = 0;
	u64 gpu_addr;
	long r;

	r = FUNC2(adev, &index);
	if (r)
		return r;

	gpu_addr = adev->wb.gpu_addr + (index * 4);
	tmp = 0xCAFEDEAD;
	adev->wb.wb[index] = FUNC6(tmp);
	FUNC11(&ib, 0, sizeof(ib));
	r = FUNC4(adev, NULL, 256, &ib);
	if (r)
		goto err0;

	ib.ptr[0] = FUNC0(SDMA_OPCODE_WRITE,
				SDMA_WRITE_SUB_OPCODE_LINEAR, 0);
	ib.ptr[1] = FUNC10(gpu_addr);
	ib.ptr[2] = FUNC12(gpu_addr);
	ib.ptr[3] = 1;
	ib.ptr[4] = 0xDEADBEEF;
	ib.length_dw = 5;
	r = FUNC5(ring, 1, &ib, NULL, &f);
	if (r)
		goto err1;

	r = FUNC8(f, false, timeout);
	if (r == 0) {
		r = -ETIMEDOUT;
		goto err1;
	} else if (r < 0) {
		goto err1;
	}
	tmp = FUNC9(adev->wb.wb[index]);
	if (tmp == 0xDEADBEEF)
		r = 0;
	else
		r = -EINVAL;

err1:
	FUNC3(adev, &ib, NULL);
	FUNC7(f);
err0:
	FUNC1(adev, index);
	return r;
}
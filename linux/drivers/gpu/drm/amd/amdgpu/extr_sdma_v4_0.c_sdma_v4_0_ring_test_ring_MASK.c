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
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; scalar_t__ gpu_addr; } ;
struct amdgpu_device {unsigned int usec_timeout; TYPE_1__ wb; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SDMA_OP_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_SUBOP_WRITE_LINEAR ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,unsigned int) ; 
 int FUNC4 (struct amdgpu_device*,unsigned int*) ; 
 int FUNC5 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	unsigned i;
	unsigned index;
	int r;
	u32 tmp;
	u64 gpu_addr;

	r = FUNC4(adev, &index);
	if (r)
		return r;

	gpu_addr = adev->wb.gpu_addr + (index * 4);
	tmp = 0xCAFEDEAD;
	adev->wb.wb[index] = FUNC8(tmp);

	r = FUNC5(ring, 5);
	if (r)
		goto error_free_wb;

	FUNC7(ring, FUNC0(SDMA_OP_WRITE) |
			  FUNC1(SDMA_SUBOP_WRITE_LINEAR));
	FUNC7(ring, FUNC10(gpu_addr));
	FUNC7(ring, FUNC12(gpu_addr));
	FUNC7(ring, FUNC2(0));
	FUNC7(ring, 0xDEADBEEF);
	FUNC6(ring);

	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC9(adev->wb.wb[index]);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC11(1);
	}

	if (i >= adev->usec_timeout)
		r = -ETIMEDOUT;

error_free_wb:
	FUNC3(adev, index);
	return r;
}
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
 int /*<<< orphan*/  SDMA_OPCODE_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_WRITE_SUB_OPCODE_LINEAR ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,unsigned int) ; 
 int FUNC2 (struct amdgpu_device*,unsigned int*) ; 
 int FUNC3 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	unsigned i;
	unsigned index;
	int r;
	u32 tmp;
	u64 gpu_addr;

	r = FUNC2(adev, &index);
	if (r)
		return r;

	gpu_addr = adev->wb.gpu_addr + (index * 4);
	tmp = 0xCAFEDEAD;
	adev->wb.wb[index] = FUNC6(tmp);

	r = FUNC3(ring, 5);
	if (r)
		goto error_free_wb;

	FUNC5(ring, FUNC0(SDMA_OPCODE_WRITE, SDMA_WRITE_SUB_OPCODE_LINEAR, 0));
	FUNC5(ring, FUNC8(gpu_addr));
	FUNC5(ring, FUNC10(gpu_addr));
	FUNC5(ring, 1); /* number of DWs to follow */
	FUNC5(ring, 0xDEADBEEF);
	FUNC4(ring);

	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC7(adev->wb.wb[index]);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC9(1);
	}

	if (i >= adev->usec_timeout)
		r = -ETIMEDOUT;

error_free_wb:
	FUNC1(adev, index);
	return r;
}
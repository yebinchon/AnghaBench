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
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct amdgpu_device {int dummy; } ;
typedef  int /*<<< orphan*/  ib ;

/* Variables and functions */
 long EINVAL ; 
 long ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_START ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 long FUNC4 (struct amdgpu_device*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,struct amdgpu_ib*,int /*<<< orphan*/ *) ; 
 long FUNC6 (struct amdgpu_device*,int /*<<< orphan*/ *,int,struct amdgpu_ib*) ; 
 long FUNC7 (struct amdgpu_ring*,int,struct amdgpu_ib*,int /*<<< orphan*/ *,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_fence*) ; 
 long FUNC9 (struct dma_fence*,int,long) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_ib*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_ring *ring, long timeout)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_ib ib;
	struct dma_fence *f = NULL;
	uint32_t scratch;
	uint32_t tmp = 0;
	long r;

	r = FUNC4(adev, &scratch);
	if (r)
		return r;

	FUNC2(scratch, 0xCAFEDEAD);
	FUNC10(&ib, 0, sizeof(ib));
	r = FUNC6(adev, NULL, 256, &ib);
	if (r)
		goto err1;

	ib.ptr[0] = FUNC0(PACKET3_SET_CONFIG_REG, 1);
	ib.ptr[1] = ((scratch - PACKET3_SET_CONFIG_REG_START));
	ib.ptr[2] = 0xDEADBEEF;
	ib.length_dw = 3;

	r = FUNC7(ring, 1, &ib, NULL, &f);
	if (r)
		goto err2;

	r = FUNC9(f, false, timeout);
	if (r == 0) {
		r = -ETIMEDOUT;
		goto err2;
	} else if (r < 0) {
		goto err2;
	}
	tmp = FUNC1(scratch);
	if (tmp == 0xDEADBEEF)
		r = 0;
	else
		r = -EINVAL;

err2:
	FUNC5(adev, &ib, NULL);
	FUNC8(f);
err1:
	FUNC3(adev, scratch);
	return r;
}
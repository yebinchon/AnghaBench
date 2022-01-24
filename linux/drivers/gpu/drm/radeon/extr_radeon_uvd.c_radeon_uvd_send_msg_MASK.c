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
typedef  int uint64_t ;
struct radeon_ib {int* ptr; int length_dw; int /*<<< orphan*/  fence; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_CMD ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_DATA0 ; 
 int /*<<< orphan*/  UVD_GPCOM_VCPU_DATA1 ; 
 int /*<<< orphan*/  UVD_NO_OP ; 
 struct radeon_fence* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ib*) ; 
 int FUNC3 (struct radeon_device*,int,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev,
			       int ring, uint64_t addr,
			       struct radeon_fence **fence)
{
	struct radeon_ib ib;
	int i, r;

	r = FUNC3(rdev, ring, &ib, NULL, 64);
	if (r)
		return r;

	ib.ptr[0] = FUNC0(UVD_GPCOM_VCPU_DATA0, 0);
	ib.ptr[1] = addr;
	ib.ptr[2] = FUNC0(UVD_GPCOM_VCPU_DATA1, 0);
	ib.ptr[3] = addr >> 32;
	ib.ptr[4] = FUNC0(UVD_GPCOM_VCPU_CMD, 0);
	ib.ptr[5] = 0;
	for (i = 6; i < 16; i += 2) {
		ib.ptr[i] = FUNC0(UVD_NO_OP, 0);
		ib.ptr[i+1] = 0;
	}
	ib.length_dw = 16;

	r = FUNC4(rdev, &ib, NULL, false);

	if (fence)
		*fence = FUNC1(ib.fence);

	FUNC2(rdev, &ib);
	return r;
}
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
struct amdgpu_ring {int /*<<< orphan*/  me; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_CMD ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA0 ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA1 ; 
 int /*<<< orphan*/  mmUVD_GP_SCRATCH8 ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring, uint32_t reg,
					uint32_t val, uint32_t mask)
{
	struct amdgpu_device *adev = ring->adev;

	FUNC2(ring,
		FUNC0(FUNC1(UVD, ring->me, mmUVD_GPCOM_VCPU_DATA0), 0));
	FUNC2(ring, reg << 2);
	FUNC2(ring,
		FUNC0(FUNC1(UVD, ring->me, mmUVD_GPCOM_VCPU_DATA1), 0));
	FUNC2(ring, val);
	FUNC2(ring,
		FUNC0(FUNC1(UVD, ring->me, mmUVD_GP_SCRATCH8), 0));
	FUNC2(ring, mask);
	FUNC2(ring,
		FUNC0(FUNC1(UVD, ring->me, mmUVD_GPCOM_VCPU_CMD), 0));
	FUNC2(ring, 12);
}
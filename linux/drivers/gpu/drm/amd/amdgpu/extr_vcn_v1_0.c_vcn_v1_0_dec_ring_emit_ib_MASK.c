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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {unsigned int length_dw; int /*<<< orphan*/  gpu_addr; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_IB_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_IB_VMID ; 
 int /*<<< orphan*/  mmUVD_RBC_IB_SIZE ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring,
					struct amdgpu_job *job,
					struct amdgpu_ib *ib,
					uint32_t flags)
{
	struct amdgpu_device *adev = ring->adev;
	unsigned vmid = FUNC0(job);

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_RBC_IB_VMID), 0));
	FUNC3(ring, vmid);

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_RBC_IB_64BIT_BAR_LOW), 0));
	FUNC3(ring, FUNC4(ib->gpu_addr));
	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH), 0));
	FUNC3(ring, FUNC5(ib->gpu_addr));
	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_RBC_IB_SIZE), 0));
	FUNC3(ring, ib->length_dw);
}
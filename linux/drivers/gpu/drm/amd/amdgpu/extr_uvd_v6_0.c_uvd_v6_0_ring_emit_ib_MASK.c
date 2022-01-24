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
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {unsigned int length_dw; int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_IB_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_IB_VMID ; 
 int /*<<< orphan*/  mmUVD_RBC_IB_SIZE ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_ring *ring,
				  struct amdgpu_job *job,
				  struct amdgpu_ib *ib,
				  uint32_t flags)
{
	unsigned vmid = FUNC0(job);

	FUNC2(ring, FUNC1(mmUVD_LMI_RBC_IB_VMID, 0));
	FUNC2(ring, vmid);

	FUNC2(ring, FUNC1(mmUVD_LMI_RBC_IB_64BIT_BAR_LOW, 0));
	FUNC2(ring, FUNC3(ib->gpu_addr));
	FUNC2(ring, FUNC1(mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH, 0));
	FUNC2(ring, FUNC4(ib->gpu_addr));
	FUNC2(ring, FUNC1(mmUVD_RBC_IB_SIZE, 0));
	FUNC2(ring, ib->length_dw);
}
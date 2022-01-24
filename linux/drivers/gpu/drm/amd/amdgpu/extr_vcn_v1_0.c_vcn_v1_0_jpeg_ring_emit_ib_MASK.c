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
struct amdgpu_ring {int /*<<< orphan*/  gpu_addr; struct amdgpu_device* adev; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int length_dw; int /*<<< orphan*/  gpu_addr; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_CONDITION_CHECK0 ; 
 int /*<<< orphan*/  PACKETJ_CONDITION_CHECK3 ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  PACKETJ_TYPE2 ; 
 int /*<<< orphan*/  PACKETJ_TYPE3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_JRBC_IB_SIZE ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_COND_RD_TIMER ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_REF_DATA ; 
 int /*<<< orphan*/  mmUVD_JRBC_STATUS ; 
 int /*<<< orphan*/  mmUVD_LMI_JPEG_VMID ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_IB_VMID ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring,
					struct amdgpu_job *job,
					struct amdgpu_ib *ib,
					uint32_t flags)
{
	struct amdgpu_device *adev = ring->adev;
	unsigned vmid = FUNC0(job);

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_JRBC_IB_VMID), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, (vmid | (vmid << 4)));

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_JPEG_VMID), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, (vmid | (vmid << 4)));

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, FUNC4(ib->gpu_addr));

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, FUNC5(ib->gpu_addr));

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_JRBC_IB_SIZE), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, ib->length_dw);

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, FUNC4(ring->gpu_addr));

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, FUNC5(ring->gpu_addr));

	FUNC3(ring,
		FUNC1(0, 0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE2));
	FUNC3(ring, 0);

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_JRBC_RB_COND_RD_TIMER), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, 0x01400200);

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_JRBC_RB_REF_DATA), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, 0x2);

	FUNC3(ring,
		FUNC1(FUNC2(UVD, 0, mmUVD_JRBC_STATUS), 0, PACKETJ_CONDITION_CHECK3, PACKETJ_TYPE3));
	FUNC3(ring, 0x2);
}
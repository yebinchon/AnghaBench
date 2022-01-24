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
struct amdgpu_ring {int /*<<< orphan*/  gpu_addr; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int length_dw; int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_CONDITION_CHECK0 ; 
 int /*<<< orphan*/  PACKETJ_CONDITION_CHECK3 ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  PACKETJ_TYPE2 ; 
 int /*<<< orphan*/  PACKETJ_TYPE3 ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_JRBC_IB_SIZE_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_JRBC_STATUS_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_LMI_JPEG_VMID_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_IB_VMID_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW_INTERNAL_OFFSET ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct amdgpu_ring *ring,
				struct amdgpu_job *job,
				struct amdgpu_ib *ib,
				uint32_t flags)
{
	unsigned vmid = FUNC0(job);

	FUNC2(ring, FUNC1(mmUVD_LMI_JRBC_IB_VMID_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, (vmid | (vmid << 4)));

	FUNC2(ring, FUNC1(mmUVD_LMI_JPEG_VMID_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, (vmid | (vmid << 4)));

	FUNC2(ring,	FUNC1(mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, FUNC3(ib->gpu_addr));

	FUNC2(ring,	FUNC1(mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, FUNC4(ib->gpu_addr));

	FUNC2(ring,	FUNC1(mmUVD_JRBC_IB_SIZE_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, ib->length_dw);

	FUNC2(ring,	FUNC1(mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, FUNC3(ring->gpu_addr));

	FUNC2(ring,	FUNC1(mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, FUNC4(ring->gpu_addr));

	FUNC2(ring,	FUNC1(0, 0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE2));
	FUNC2(ring, 0);

	FUNC2(ring,	FUNC1(mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, 0x01400200);

	FUNC2(ring, FUNC1(mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, 0x2);

	FUNC2(ring,	FUNC1(mmUVD_JRBC_STATUS_INTERNAL_OFFSET,
		0, PACKETJ_CONDITION_CHECK3, PACKETJ_TYPE3));
	FUNC2(ring, 0x2);
}
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
typedef  int u64 ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 int /*<<< orphan*/  JRBC_DEC_EXTERNAL_REG_WRITE_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_CONDITION_CHECK0 ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  PACKETJ_TYPE4 ; 
 int /*<<< orphan*/  PACKETJ_TYPE7 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_JPEG_GPCOM_DATA0_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_JPEG_GPCOM_DATA1_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH_INTERNAL_OFFSET ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW_INTERNAL_OFFSET ; 
 int FUNC4 (int) ; 

void FUNC5(struct amdgpu_ring *ring, u64 addr, u64 seq,
				unsigned flags)
{
	FUNC1(flags & AMDGPU_FENCE_FLAG_64BIT);

	FUNC2(ring, FUNC0(mmUVD_JPEG_GPCOM_DATA0_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, seq);

	FUNC2(ring,	FUNC0(mmUVD_JPEG_GPCOM_DATA1_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, seq);

	FUNC2(ring,	FUNC0(mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, FUNC3(addr));

	FUNC2(ring,	FUNC0(mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, FUNC4(addr));

	FUNC2(ring,	FUNC0(mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, 0x8);

	FUNC2(ring,	FUNC0(mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET,
		0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE4));
	FUNC2(ring, 0);

	FUNC2(ring,	FUNC0(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, 0x3fbc);

	FUNC2(ring, FUNC0(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
		0, 0, PACKETJ_TYPE0));
	FUNC2(ring, 0x1);

	FUNC2(ring, FUNC0(0, 0, 0, PACKETJ_TYPE7));
	FUNC2(ring, 0);
}
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
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_CONDITION_CHECK0 ; 
 int /*<<< orphan*/  PACKETJ_CONDITION_CHECK3 ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  PACKETJ_TYPE2 ; 
 int /*<<< orphan*/  PACKETJ_TYPE4 ; 
 int /*<<< orphan*/  PACKETJ_TYPE7 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  mmUVD_JPEG_GPCOM_CMD ; 
 int /*<<< orphan*/  mmUVD_JPEG_GPCOM_DATA0 ; 
 int /*<<< orphan*/  mmUVD_JPEG_GPCOM_DATA1 ; 
 int /*<<< orphan*/  mmUVD_JRBC_EXTERNAL_REG_BASE ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_COND_RD_TIMER ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_REF_DATA ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring, u64 addr, u64 seq,
				     unsigned flags)
{
	struct amdgpu_device *adev = ring->adev;

	FUNC2(flags & AMDGPU_FENCE_FLAG_64BIT);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JPEG_GPCOM_DATA0), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, seq);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JPEG_GPCOM_DATA1), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, seq);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, FUNC4(addr));

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, FUNC5(addr));

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JPEG_GPCOM_CMD), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, 0x8);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JPEG_GPCOM_CMD), 0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE4));
	FUNC3(ring, 0);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JRBC_RB_COND_RD_TIMER), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, 0x01400200);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JRBC_RB_REF_DATA), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, seq);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, FUNC4(addr));

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, FUNC5(addr));

	FUNC3(ring,
		FUNC0(0, 0, PACKETJ_CONDITION_CHECK3, PACKETJ_TYPE2));
	FUNC3(ring, 0xffffffff);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JRBC_EXTERNAL_REG_BASE), 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, 0x3fbc);

	FUNC3(ring,
		FUNC0(0, 0, 0, PACKETJ_TYPE0));
	FUNC3(ring, 0x1);

	/* emit trap */
	FUNC3(ring, FUNC0(0, 0, 0, PACKETJ_TYPE7));
	FUNC3(ring, 0);
}
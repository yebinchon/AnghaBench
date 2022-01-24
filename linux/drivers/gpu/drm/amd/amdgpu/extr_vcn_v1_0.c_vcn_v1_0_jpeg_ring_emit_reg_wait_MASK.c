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
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  PACKETJ_TYPE3 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_JRBC_EXTERNAL_REG_BASE ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_COND_RD_TIMER ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_REF_DATA ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring,
					    uint32_t reg, uint32_t val,
					    uint32_t mask)
{
	struct amdgpu_device *adev = ring->adev;
	uint32_t reg_offset = (reg << 2);

	FUNC2(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JRBC_RB_COND_RD_TIMER), 0, 0, PACKETJ_TYPE0));
	FUNC2(ring, 0x01400200);

	FUNC2(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JRBC_RB_REF_DATA), 0, 0, PACKETJ_TYPE0));
	FUNC2(ring, val);

	FUNC2(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_JRBC_EXTERNAL_REG_BASE), 0, 0, PACKETJ_TYPE0));
	if (((reg_offset >= 0x1f800) && (reg_offset <= 0x21fff)) ||
		((reg_offset >= 0x1e000) && (reg_offset <= 0x1e1ff))) {
		FUNC2(ring, 0);
		FUNC2(ring,
			FUNC0((reg_offset >> 2), 0, 0, PACKETJ_TYPE3));
	} else {
		FUNC2(ring, reg_offset);
		FUNC2(ring,
			FUNC0(0, 0, 0, PACKETJ_TYPE3));
	}
	FUNC2(ring, mask);
}
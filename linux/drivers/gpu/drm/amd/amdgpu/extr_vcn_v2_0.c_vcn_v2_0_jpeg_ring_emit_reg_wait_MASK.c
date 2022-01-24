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
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int JRBC_DEC_EXTERNAL_REG_WRITE_ADDR ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  PACKETJ_TYPE3 ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET ; 
 int mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET ; 
 int mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET ; 

void FUNC2(struct amdgpu_ring *ring, uint32_t reg,
				uint32_t val, uint32_t mask)
{
	uint32_t reg_offset = (reg << 2);

	FUNC1(ring, FUNC0(mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC1(ring, 0x01400200);

	FUNC1(ring,	FUNC0(mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC1(ring, val);

	FUNC1(ring, FUNC0(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	if (reg_offset >= 0x10000 && reg_offset <= 0x105ff) {
		FUNC1(ring, 0);
		FUNC1(ring,
			FUNC0((reg_offset >> 2), 0, 0, PACKETJ_TYPE3));
	} else {
		FUNC1(ring, reg_offset);
		FUNC1(ring,	FUNC0(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
			0, 0, PACKETJ_TYPE3));
	}
	FUNC1(ring, mask);
}
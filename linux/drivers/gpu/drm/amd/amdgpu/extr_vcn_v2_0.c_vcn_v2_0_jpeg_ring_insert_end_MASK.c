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
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JRBC_DEC_EXTERNAL_REG_WRITE_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_TYPE0 ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET ; 

void FUNC2(struct amdgpu_ring *ring)
{
	FUNC1(ring, FUNC0(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
		0, 0, PACKETJ_TYPE0));
	FUNC1(ring, 0x68e04);

	FUNC1(ring, FUNC0(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
		0, 0, PACKETJ_TYPE0));
	FUNC1(ring, 0x00010000);
}
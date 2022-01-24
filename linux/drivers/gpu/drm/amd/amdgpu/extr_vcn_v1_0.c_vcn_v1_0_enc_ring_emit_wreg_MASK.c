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
 int VCN_ENC_CMD_REG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC1(struct amdgpu_ring *ring,
					uint32_t reg, uint32_t val)
{
	FUNC0(ring, VCN_ENC_CMD_REG_WRITE);
	FUNC0(ring,	reg << 2);
	FUNC0(ring, val);
}
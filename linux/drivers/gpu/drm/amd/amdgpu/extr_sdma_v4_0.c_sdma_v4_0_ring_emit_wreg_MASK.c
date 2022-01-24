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
 int /*<<< orphan*/  SDMA_OP_SRBM_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring,
				     uint32_t reg, uint32_t val)
{
	FUNC2(ring, FUNC0(SDMA_OP_SRBM_WRITE) |
			  FUNC1(0xf));
	FUNC2(ring, reg);
	FUNC2(ring, val);
}
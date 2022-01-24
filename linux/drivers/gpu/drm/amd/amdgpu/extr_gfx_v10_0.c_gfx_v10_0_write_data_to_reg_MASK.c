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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int WR_CONFIRM ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring, int eng_sel,
				       bool wc, uint32_t reg, uint32_t val)
{
	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, FUNC2(eng_sel) |
			  FUNC1(0) | (wc ? WR_CONFIRM : 0));
	FUNC3(ring, reg);
	FUNC3(ring, 0);
	FUNC3(ring, val);
}
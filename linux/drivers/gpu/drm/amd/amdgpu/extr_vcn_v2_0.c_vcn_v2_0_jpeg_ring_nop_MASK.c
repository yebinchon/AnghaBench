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
struct amdgpu_ring {int wptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKETJ_TYPE6 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 

void FUNC3(struct amdgpu_ring *ring, uint32_t count)
{
	int i;

	FUNC1(ring->wptr % 2 || count % 2);

	for (i = 0; i < count / 2; i++) {
		FUNC2(ring, FUNC0(0, 0, 0, PACKETJ_TYPE6));
		FUNC2(ring, 0);
	}
}
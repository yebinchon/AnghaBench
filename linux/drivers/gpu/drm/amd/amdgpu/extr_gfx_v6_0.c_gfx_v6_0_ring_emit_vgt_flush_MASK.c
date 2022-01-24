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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_EVENT_WRITE ; 
 int /*<<< orphan*/  VGT_FLUSH ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring)
{
	FUNC3(ring, FUNC2(PACKET3_EVENT_WRITE, 0));
	FUNC3(ring, FUNC1(VGT_FLUSH) |
		FUNC0(0));
}
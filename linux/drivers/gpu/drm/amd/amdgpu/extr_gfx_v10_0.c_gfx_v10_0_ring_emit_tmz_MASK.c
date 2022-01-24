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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_FRAME_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring, bool start)
{
	FUNC2(ring, FUNC1(PACKET3_FRAME_CONTROL, 0));
	FUNC2(ring, FUNC0(start ? 0 : 1)); /* frame_end */
}
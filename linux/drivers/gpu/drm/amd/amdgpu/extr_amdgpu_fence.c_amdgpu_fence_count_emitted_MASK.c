#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  sync_seq; int /*<<< orphan*/  last_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 

unsigned FUNC4(struct amdgpu_ring *ring)
{
	uint64_t emitted;

	/* We are not protected by ring lock when reading the last sequence
	 * but it's ok to report slightly wrong fence count here.
	 */
	FUNC1(ring);
	emitted = 0x100000000ull;
	emitted -= FUNC2(&ring->fence_drv.last_seq);
	emitted += FUNC0(ring->fence_drv.sync_seq);
	return FUNC3(emitted);
}
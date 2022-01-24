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
typedef  int uint64_t ;
struct radeon_semaphore {int gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int VCE_CMD_END ; 
 int VCE_CMD_SEMAPHORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int /*<<< orphan*/ ) ; 

bool FUNC2(struct radeon_device *rdev,
			       struct radeon_ring *ring,
			       struct radeon_semaphore *semaphore,
			       bool emit_wait)
{
	uint64_t addr = semaphore->gpu_addr;

	FUNC1(ring, FUNC0(VCE_CMD_SEMAPHORE));
	FUNC1(ring, FUNC0((addr >> 3) & 0x000FFFFF));
	FUNC1(ring, FUNC0((addr >> 23) & 0x000FFFFF));
	FUNC1(ring, FUNC0(0x01003000 | (emit_wait ? 1 : 0)));
	if (!emit_wait)
		FUNC1(ring, FUNC0(VCE_CMD_END));

	return true;
}
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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct radeon_semaphore {int gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_OPCODE_SEMAPHORE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_SEMAPHORE_EXTRA_S ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 
 int FUNC2 (int) ; 

bool FUNC3(struct radeon_device *rdev,
				  struct radeon_ring *ring,
				  struct radeon_semaphore *semaphore,
				  bool emit_wait)
{
	u64 addr = semaphore->gpu_addr;
	u32 extra_bits = emit_wait ? 0 : SDMA_SEMAPHORE_EXTRA_S;

	FUNC1(ring, FUNC0(SDMA_OPCODE_SEMAPHORE, 0, extra_bits));
	FUNC1(ring, addr & 0xfffffff8);
	FUNC1(ring, FUNC2(addr));

	return true;
}
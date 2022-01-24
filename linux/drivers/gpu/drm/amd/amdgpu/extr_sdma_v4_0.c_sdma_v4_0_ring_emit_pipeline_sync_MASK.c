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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int gpu_addr; int /*<<< orphan*/  sync_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_ring *ring)
{
	uint32_t seq = ring->fence_drv.sync_seq;
	uint64_t addr = ring->fence_drv.gpu_addr;

	/* wait for idle */
	FUNC0(ring, 1, 0,
			       addr & 0xfffffffc,
			       FUNC1(addr) & 0xffffffff,
			       seq, 0xffffffff, 4);
}
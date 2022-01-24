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
struct amdgpu_ring {unsigned int wptr; unsigned int buf_mask; int /*<<< orphan*/  cond_exe_gpu_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_COND_EXEC ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC4(struct amdgpu_ring *ring)
{
	unsigned ret;

	FUNC1(ring, FUNC0(PACKET3_COND_EXEC, 3));
	FUNC1(ring, FUNC2(ring->cond_exe_gpu_addr));
	FUNC1(ring, FUNC3(ring->cond_exe_gpu_addr));
	FUNC1(ring, 0); /* discard following DWs if *cond_exec_gpu_addr==0 */
	ret = ring->wptr & ring->buf_mask;
	FUNC1(ring, 0x55aa55aa); /* patch dummy value later */
	return ret;
}
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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {unsigned int length_dw; int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_job*) ; 
 unsigned int HEVC_ENC_CMD_IB_VM ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring,
					struct amdgpu_job *job,
					struct amdgpu_ib *ib,
					uint32_t flags)
{
	unsigned vmid = FUNC0(job);

	FUNC1(ring, HEVC_ENC_CMD_IB_VM);
	FUNC1(ring, vmid);
	FUNC1(ring, FUNC2(ib->gpu_addr));
	FUNC1(ring, FUNC3(ib->gpu_addr));
	FUNC1(ring, ib->length_dw);
}
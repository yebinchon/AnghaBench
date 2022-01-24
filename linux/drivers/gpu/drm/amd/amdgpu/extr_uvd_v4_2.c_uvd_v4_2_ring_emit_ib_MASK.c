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
struct amdgpu_ib {int /*<<< orphan*/  length_dw; int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_RBC_IB_BASE ; 
 int /*<<< orphan*/  mmUVD_RBC_IB_SIZE ; 

__attribute__((used)) static void FUNC2(struct amdgpu_ring *ring,
				  struct amdgpu_job *job,
				  struct amdgpu_ib *ib,
				  uint32_t flags)
{
	FUNC1(ring, FUNC0(mmUVD_RBC_IB_BASE, 0));
	FUNC1(ring, ib->gpu_addr);
	FUNC1(ring, FUNC0(mmUVD_RBC_IB_SIZE, 0));
	FUNC1(ring, ib->length_dw);
}
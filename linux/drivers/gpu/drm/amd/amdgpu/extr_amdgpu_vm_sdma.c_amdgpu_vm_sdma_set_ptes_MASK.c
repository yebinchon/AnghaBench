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
struct amdgpu_vm_update_params {int /*<<< orphan*/  adev; TYPE_1__* job; } ;
struct amdgpu_ib {int dummy; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_2__ {struct amdgpu_ib* ibs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct amdgpu_ib*,int,int,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct amdgpu_ib*,int,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_vm_update_params *p,
				    struct amdgpu_bo *bo, uint64_t pe,
				    uint64_t addr, unsigned count,
				    uint32_t incr, uint64_t flags)
{
	struct amdgpu_ib *ib = p->job->ibs;

	pe += FUNC0(bo);
	FUNC3(pe, addr, count, incr, flags);
	if (count < 3) {
		FUNC2(p->adev, ib, pe, addr | flags,
				    count, incr);
	} else {
		FUNC1(p->adev, ib, pe, addr,
				      count, incr, flags);
	}
}
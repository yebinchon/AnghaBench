#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dma_fence {int dummy; } ;
struct amdgpu_vm_update_params {TYPE_3__* vm; } ;
struct TYPE_4__ {int /*<<< orphan*/  bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {TYPE_2__ root; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC1 (struct dma_fence*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_vm_update_params *p, void *owner,
				 struct dma_fence *exclusive)
{
	int r;

	/* Wait for PT BOs to be idle. PTs share the same resv. object
	 * as the root PD BO
	 */
	r = FUNC0(p->vm->root.base.bo, owner, true);
	if (FUNC2(r))
		return r;

	/* Wait for any BO move to be completed */
	if (exclusive) {
		r = FUNC1(exclusive, true);
		if (FUNC2(r))
			return r;
	}

	return 0;
}
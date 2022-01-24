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
struct dma_fence {int dummy; } ;
struct amdgpu_amdkfd_fence {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 struct amdgpu_amdkfd_fence* FUNC3 (struct dma_fence*) ; 

__attribute__((used)) static void FUNC4(struct dma_fence *f)
{
	struct amdgpu_amdkfd_fence *fence = FUNC3(f);

	/* Unconditionally signal the fence. The process is getting
	 * terminated.
	 */
	if (FUNC0(!fence))
		return; /* Not an amdgpu_amdkfd_fence */

	FUNC2(fence->mm);
	FUNC1(f, rcu);
}
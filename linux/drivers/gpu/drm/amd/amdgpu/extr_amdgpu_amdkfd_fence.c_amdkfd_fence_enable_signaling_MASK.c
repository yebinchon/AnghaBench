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
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 struct amdgpu_amdkfd_fence* FUNC2 (struct dma_fence*) ; 

__attribute__((used)) static bool FUNC3(struct dma_fence *f)
{
	struct amdgpu_amdkfd_fence *fence = FUNC2(f);

	if (!fence)
		return false;

	if (FUNC0(f))
		return true;

	if (!FUNC1(fence->mm, f))
		return true;

	return false;
}
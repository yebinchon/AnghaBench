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
struct msm_gem_vma {scalar_t__ inuse; scalar_t__ iova; int /*<<< orphan*/  node; scalar_t__ mapped; } ;
struct msm_gem_address_space {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct msm_gem_address_space *aspace,
		struct msm_gem_vma *vma)
{
	if (FUNC0(vma->inuse > 0 || vma->mapped))
		return;

	FUNC3(&aspace->lock);
	if (vma->iova)
		FUNC1(&vma->node);
	FUNC4(&aspace->lock);

	vma->iova = 0;

	FUNC2(aspace);
}
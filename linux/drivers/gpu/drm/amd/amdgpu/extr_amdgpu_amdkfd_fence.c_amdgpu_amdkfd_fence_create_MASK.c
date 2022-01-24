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
typedef  int /*<<< orphan*/  u64 ;
struct mm_struct {int dummy; } ;
struct amdgpu_amdkfd_fence {int /*<<< orphan*/  lock; int /*<<< orphan*/  base; int /*<<< orphan*/  timeline_name; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  amdkfd_fence_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fence_seq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_amdkfd_fence* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct amdgpu_amdkfd_fence *FUNC6(u64 context,
						       struct mm_struct *mm)
{
	struct amdgpu_amdkfd_fence *fence;

	fence = FUNC3(sizeof(*fence), GFP_KERNEL);
	if (fence == NULL)
		return NULL;

	/* This reference gets released in amdkfd_fence_release */
	FUNC4(mm);
	fence->mm = mm;
	FUNC2(fence->timeline_name, current);
	FUNC5(&fence->lock);

	FUNC1(&fence->base, &amdkfd_fence_ops, &fence->lock,
		   context, FUNC0(&fence_seq));

	return fence;
}
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
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct amdgpu_sa_manager {unsigned int align; unsigned int size; TYPE_1__ wq; } ;
struct amdgpu_sa_bo {int /*<<< orphan*/  flist; int /*<<< orphan*/  olist; int /*<<< orphan*/ * fence; struct amdgpu_sa_manager* manager; } ;

/* Variables and functions */
 int AMDGPU_SA_NUM_FENCE_LISTS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct amdgpu_sa_manager*,struct dma_fence**,unsigned int*) ; 
 scalar_t__ FUNC3 (struct amdgpu_sa_manager*,struct amdgpu_sa_bo*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_sa_manager*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_sa_manager*,unsigned int,unsigned int) ; 
 struct dma_fence* FUNC6 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_fence*) ; 
 long FUNC8 (struct dma_fence**,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_sa_bo*) ; 
 struct amdgpu_sa_bo* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__,int /*<<< orphan*/ ) ; 

int FUNC14(struct amdgpu_sa_manager *sa_manager,
		     struct amdgpu_sa_bo **sa_bo,
		     unsigned size, unsigned align)
{
	struct dma_fence *fences[AMDGPU_SA_NUM_FENCE_LISTS];
	unsigned tries[AMDGPU_SA_NUM_FENCE_LISTS];
	unsigned count;
	int i, r;
	signed long t;

	if (FUNC1(align > sa_manager->align))
		return -EINVAL;

	if (FUNC1(size > sa_manager->size))
		return -EINVAL;

	*sa_bo = FUNC10(sizeof(struct amdgpu_sa_bo), GFP_KERNEL);
	if (!(*sa_bo))
		return -ENOMEM;
	(*sa_bo)->manager = sa_manager;
	(*sa_bo)->fence = NULL;
	FUNC0(&(*sa_bo)->olist);
	FUNC0(&(*sa_bo)->flist);

	FUNC11(&sa_manager->wq.lock);
	do {
		for (i = 0; i < AMDGPU_SA_NUM_FENCE_LISTS; ++i)
			tries[i] = 0;

		do {
			FUNC4(sa_manager);

			if (FUNC3(sa_manager, *sa_bo,
						   size, align)) {
				FUNC12(&sa_manager->wq.lock);
				return 0;
			}

			/* see if we can skip over some allocations */
		} while (FUNC2(sa_manager, fences, tries));

		for (i = 0, count = 0; i < AMDGPU_SA_NUM_FENCE_LISTS; ++i)
			if (fences[i])
				fences[count++] = FUNC6(fences[i]);

		if (count) {
			FUNC12(&sa_manager->wq.lock);
			t = FUNC8(fences, count, false,
						       MAX_SCHEDULE_TIMEOUT,
						       NULL);
			for (i = 0; i < count; ++i)
				FUNC7(fences[i]);

			r = (t > 0) ? 0 : t;
			FUNC11(&sa_manager->wq.lock);
		} else {
			/* if we have nothing to wait for block */
			r = FUNC13(
				sa_manager->wq,
				FUNC5(sa_manager, size, align)
			);
		}

	} while (!r);

	FUNC12(&sa_manager->wq.lock);
	FUNC9(*sa_bo);
	*sa_bo = NULL;
	return r;
}
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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct radeon_sa_manager {unsigned int align; unsigned int size; TYPE_1__ wq; } ;
struct radeon_sa_bo {int /*<<< orphan*/  flist; int /*<<< orphan*/  olist; int /*<<< orphan*/ * fence; struct radeon_sa_manager* manager; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_sa_bo*) ; 
 struct radeon_sa_bo* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_fence**) ; 
 int FUNC6 (struct radeon_device*,struct radeon_fence**,int) ; 
 scalar_t__ FUNC7 (struct radeon_sa_manager*,struct radeon_fence**,unsigned int*) ; 
 scalar_t__ FUNC8 (struct radeon_sa_manager*,struct radeon_sa_bo*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_sa_manager*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_sa_manager*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__,int /*<<< orphan*/ ) ; 

int FUNC14(struct radeon_device *rdev,
		     struct radeon_sa_manager *sa_manager,
		     struct radeon_sa_bo **sa_bo,
		     unsigned size, unsigned align)
{
	struct radeon_fence *fences[RADEON_NUM_RINGS];
	unsigned tries[RADEON_NUM_RINGS];
	int i, r;

	FUNC0(align > sa_manager->align);
	FUNC0(size > sa_manager->size);

	*sa_bo = FUNC3(sizeof(struct radeon_sa_bo), GFP_KERNEL);
	if ((*sa_bo) == NULL) {
		return -ENOMEM;
	}
	(*sa_bo)->manager = sa_manager;
	(*sa_bo)->fence = NULL;
	FUNC1(&(*sa_bo)->olist);
	FUNC1(&(*sa_bo)->flist);

	FUNC11(&sa_manager->wq.lock);
	do {
		for (i = 0; i < RADEON_NUM_RINGS; ++i) {
			fences[i] = NULL;
			tries[i] = 0;
		}

		do {
			FUNC9(sa_manager);

			if (FUNC8(sa_manager, *sa_bo,
						   size, align)) {
				FUNC12(&sa_manager->wq.lock);
				return 0;
			}

			/* see if we can skip over some allocations */
		} while (FUNC7(sa_manager, fences, tries));

		for (i = 0; i < RADEON_NUM_RINGS; ++i)
			FUNC4(fences[i]);

		FUNC12(&sa_manager->wq.lock);
		r = FUNC6(rdev, fences, false);
		for (i = 0; i < RADEON_NUM_RINGS; ++i)
			FUNC5(&fences[i]);
		FUNC11(&sa_manager->wq.lock);
		/* if we have nothing to wait for block */
		if (r == -ENOENT) {
			r = FUNC13(
				sa_manager->wq, 
				FUNC10(sa_manager, size, align)
			);
		}

	} while (!r);

	FUNC12(&sa_manager->wq.lock);
	FUNC2(*sa_bo);
	*sa_bo = NULL;
	return r;
}
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
struct radeon_sa_manager {TYPE_1__ wq; int /*<<< orphan*/ * flist; } ;
struct radeon_sa_bo {int /*<<< orphan*/  flist; int /*<<< orphan*/  fence; struct radeon_sa_manager* manager; } ;
struct radeon_fence {size_t ring; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_sa_bo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(struct radeon_device *rdev, struct radeon_sa_bo **sa_bo,
		       struct radeon_fence *fence)
{
	struct radeon_sa_manager *sa_manager;

	if (sa_bo == NULL || *sa_bo == NULL) {
		return;
	}

	sa_manager = (*sa_bo)->manager;
	FUNC4(&sa_manager->wq.lock);
	if (fence && !FUNC2(fence)) {
		(*sa_bo)->fence = FUNC1(fence);
		FUNC0(&(*sa_bo)->flist,
			      &sa_manager->flist[fence->ring]);
	} else {
		FUNC3(*sa_bo);
	}
	FUNC6(&sa_manager->wq);
	FUNC5(&sa_manager->wq.lock);
	*sa_bo = NULL;
}
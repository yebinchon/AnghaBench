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
struct intel_timeline {int /*<<< orphan*/  link; int /*<<< orphan*/  sync; int /*<<< orphan*/  requests; int /*<<< orphan*/  mutex; int /*<<< orphan*/  last_request; int /*<<< orphan*/  fence_context; int /*<<< orphan*/ * gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct intel_timeline *timeline, u64 context)
{
	timeline->gt = NULL;
	timeline->fence_context = context;

	FUNC3(&timeline->mutex);

	FUNC0(&timeline->last_request, &timeline->mutex);
	FUNC1(&timeline->requests);

	FUNC2(&timeline->sync);

	FUNC1(&timeline->link);
}
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
struct TYPE_2__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {int /*<<< orphan*/  wu_mutex; TYPE_1__ base; } ;

/* Variables and functions */
 int EINTR ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct ttm_buffer_object *bo)
{
	int ret;

	/*
	 * In the absense of a wait_unlocked API,
	 * Use the bo::wu_mutex to avoid triggering livelocks due to
	 * concurrent use of this function. Note that this use of
	 * bo::wu_mutex can go away if we change locking order to
	 * mmap_sem -> bo::reserve.
	 */
	ret = FUNC3(&bo->wu_mutex);
	if (FUNC5(ret != 0))
		return -ERESTARTSYS;
	if (!FUNC0(bo->base.resv))
		goto out_unlock;
	ret = FUNC1(bo->base.resv, NULL);
	if (ret == -EINTR)
		ret = -ERESTARTSYS;
	if (FUNC5(ret != 0))
		goto out_unlock;
	FUNC2(bo->base.resv);

out_unlock:
	FUNC4(&bo->wu_mutex);
	return ret;
}
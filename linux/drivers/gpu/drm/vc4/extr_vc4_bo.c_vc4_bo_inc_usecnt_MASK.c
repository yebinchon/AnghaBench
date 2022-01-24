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
struct vc4_bo {int madv; int /*<<< orphan*/  madv_lock; int /*<<< orphan*/  usecnt; } ;

/* Variables and functions */
 int EINVAL ; 
#define  VC4_MADV_DONTNEED 130 
#define  VC4_MADV_WILLNEED 129 
#define  __VC4_MADV_PURGED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(struct vc4_bo *bo)
{
	int ret;

	/* Fast path: if the BO is already retained by someone, no need to
	 * check the madv status.
	 */
	if (FUNC2(&bo->usecnt))
		return 0;

	FUNC0(&bo->madv_lock);
	switch (bo->madv) {
	case VC4_MADV_WILLNEED:
		if (!FUNC2(&bo->usecnt))
			FUNC3(&bo->usecnt, 1);
		ret = 0;
		break;
	case VC4_MADV_DONTNEED:
		/* We shouldn't use a BO marked as purgeable if at least
		 * someone else retained its content by incrementing usecnt.
		 * Luckily the BO hasn't been purged yet, but something wrong
		 * is happening here. Just throw an error instead of
		 * authorizing this use case.
		 */
	case __VC4_MADV_PURGED:
		/* We can't use a purged BO. */
	default:
		/* Invalid madv value. */
		ret = -EINVAL;
		break;
	}
	FUNC1(&bo->madv_lock);

	return ret;
}
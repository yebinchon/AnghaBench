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
struct iova_domain {int /*<<< orphan*/  iova_rbtree_lock; int /*<<< orphan*/  rbroot; } ;
struct iova {unsigned long pfn_lo; unsigned long pfn_hi; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iova_domain*,struct iova*) ; 
 struct iova* FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct iova*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iova*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

struct iova *
FUNC7(struct iova_domain *iovad, struct iova *iova,
		      unsigned long pfn_lo, unsigned long pfn_hi)
{
	unsigned long flags;
	struct iova *prev = NULL, *next = NULL;

	FUNC5(&iovad->iova_rbtree_lock, flags);
	if (iova->pfn_lo < pfn_lo) {
		prev = FUNC1(iova->pfn_lo, pfn_lo - 1);
		if (prev == NULL)
			goto error;
	}
	if (iova->pfn_hi > pfn_hi) {
		next = FUNC1(pfn_hi + 1, iova->pfn_hi);
		if (next == NULL)
			goto error;
	}

	FUNC0(iovad, iova);
	FUNC4(&iova->node, &iovad->rbroot);

	if (prev) {
		FUNC3(&iovad->rbroot, prev, NULL);
		iova->pfn_lo = pfn_lo;
	}
	if (next) {
		FUNC3(&iovad->rbroot, next, NULL);
		iova->pfn_hi = pfn_hi;
	}
	FUNC6(&iovad->iova_rbtree_lock, flags);

	return iova;

error:
	FUNC6(&iovad->iova_rbtree_lock, flags);
	if (prev)
		FUNC2(prev);
	return NULL;
}
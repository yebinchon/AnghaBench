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
struct iova_magazine {int size; int /*<<< orphan*/ * pfns; } ;
struct iova_domain {int /*<<< orphan*/  iova_rbtree_lock; } ;
struct iova {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct iova* FUNC1 (struct iova_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iova_domain*,struct iova*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct iova_magazine *mag, struct iova_domain *iovad)
{
	unsigned long flags;
	int i;

	if (!mag)
		return;

	FUNC3(&iovad->iova_rbtree_lock, flags);

	for (i = 0 ; i < mag->size; ++i) {
		struct iova *iova = FUNC1(iovad, mag->pfns[i]);

		FUNC0(!iova);
		FUNC2(iovad, iova);
	}

	FUNC4(&iovad->iova_rbtree_lock, flags);

	mag->size = 0;
}
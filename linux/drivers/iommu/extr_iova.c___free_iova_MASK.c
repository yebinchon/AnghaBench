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
struct iova_domain {int /*<<< orphan*/  iova_rbtree_lock; } ;
struct iova {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iova_domain*,struct iova*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(struct iova_domain *iovad, struct iova *iova)
{
	unsigned long flags;

	FUNC1(&iovad->iova_rbtree_lock, flags);
	FUNC0(iovad, iova);
	FUNC2(&iovad->iova_rbtree_lock, flags);
}
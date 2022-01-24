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
struct iova_domain {int /*<<< orphan*/  rbroot; int /*<<< orphan*/  iova_rbtree_lock; } ;
struct iova {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iova_domain*,struct iova*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iova*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct iova_domain *iovad, struct iova *iova)
{
	FUNC1(&iovad->iova_rbtree_lock);
	FUNC0(iovad, iova);
	FUNC3(&iova->node, &iovad->rbroot);
	FUNC2(iova);
}
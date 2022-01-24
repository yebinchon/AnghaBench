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
struct coh901318_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  dmapool; } ;
struct coh901318_lli {int /*<<< orphan*/  phy_this; struct coh901318_lli* virt_link_addr; scalar_t__ link_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coh901318_pool*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct coh901318_lli*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct coh901318_pool *pool,
			struct coh901318_lli **lli)
{
	struct coh901318_lli *l;
	struct coh901318_lli *next;

	if (lli == NULL)
		return;

	l = *lli;

	if (l == NULL)
		return;

	FUNC2(&pool->lock);

	while (l->link_addr) {
		next = l->virt_link_addr;
		FUNC1(pool->dmapool, l, l->phy_this);
		FUNC0(pool, -1);
		l = next;
	}
	FUNC1(pool->dmapool, l, l->phy_this);
	FUNC0(pool, -1);

	FUNC3(&pool->lock);
	*lli = NULL;
}
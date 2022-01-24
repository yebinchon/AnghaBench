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
struct coh901318_lli {int link_addr; struct coh901318_lli* virt_link_addr; void* phy_this; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coh901318_pool*,int) ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct coh901318_pool*,struct coh901318_lli**) ; 
 struct coh901318_lli* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct coh901318_lli *
FUNC5(struct coh901318_pool *pool, unsigned int len)
{
	int i;
	struct coh901318_lli *head;
	struct coh901318_lli *lli;
	struct coh901318_lli *lli_prev;
	dma_addr_t phy;

	if (len == 0)
		return NULL;

	FUNC3(&pool->lock);

	head = FUNC2(pool->dmapool, GFP_NOWAIT, &phy);

	if (head == NULL)
		goto err;

	FUNC0(pool, 1);

	lli = head;
	lli->phy_this = phy;
	lli->link_addr = 0x00000000;
	lli->virt_link_addr = NULL;

	for (i = 1; i < len; i++) {
		lli_prev = lli;

		lli = FUNC2(pool->dmapool, GFP_NOWAIT, &phy);

		if (lli == NULL)
			goto err_clean_up;

		FUNC0(pool, 1);
		lli->phy_this = phy;
		lli->link_addr = 0x00000000;
		lli->virt_link_addr = NULL;

		lli_prev->link_addr = phy;
		lli_prev->virt_link_addr = lli;
	}

	FUNC4(&pool->lock);

	return head;

 err:
	FUNC4(&pool->lock);
	return NULL;

 err_clean_up:
	lli_prev->link_addr = 0x00000000U;
	FUNC4(&pool->lock);
	FUNC1(pool, &head);
	return NULL;
}
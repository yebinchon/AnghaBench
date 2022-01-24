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
struct qib_user_sdma_queue {scalar_t__ refcount; int /*<<< orphan*/  pkt_slab; int /*<<< orphan*/  header_cache; struct qib_user_sdma_queue* sdma_rb_node; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_user_sdma_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_user_sdma_rb_root ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct qib_user_sdma_queue *pq)
{
	if (!pq)
		return;

	pq->sdma_rb_node->refcount--;
	if (pq->sdma_rb_node->refcount == 0) {
		FUNC3(&pq->sdma_rb_node->node, &qib_user_sdma_rb_root);
		FUNC1(pq->sdma_rb_node);
	}
	FUNC0(pq->header_cache);
	FUNC2(pq->pkt_slab);
	FUNC1(pq);
}
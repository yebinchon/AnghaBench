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
struct qib_user_sdma_rb_node {int refcount; int /*<<< orphan*/  pid; } ;
struct qib_user_sdma_queue {int /*<<< orphan*/  pkt_slab; int /*<<< orphan*/  header_cache; struct qib_user_sdma_rb_node* sdma_rb_node; int /*<<< orphan*/  dma_pages_root; int /*<<< orphan*/  header_cache_name; int /*<<< orphan*/  pkt_slab_name; int /*<<< orphan*/  lock; int /*<<< orphan*/  sent_lock; int /*<<< orphan*/  sent; scalar_t__ added; scalar_t__ num_sending; scalar_t__ num_pending; scalar_t__ sent_counter; scalar_t__ counter; } ;
struct qib_user_sdma_pkt {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QIB_USER_SDMA_EXP_HEADER_LENGTH ; 
 int /*<<< orphan*/  RB_ROOT ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_user_sdma_queue*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct qib_user_sdma_rb_node*) ; 
 int /*<<< orphan*/  qib_user_sdma_rb_root ; 
 struct qib_user_sdma_rb_node* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct qib_user_sdma_queue *
FUNC12(struct device *dev, int unit, int ctxt, int sctxt)
{
	struct qib_user_sdma_queue *pq =
		FUNC4(sizeof(struct qib_user_sdma_queue), GFP_KERNEL);
	struct qib_user_sdma_rb_node *sdma_rb_node;

	if (!pq)
		goto done;

	pq->counter = 0;
	pq->sent_counter = 0;
	pq->num_pending = 0;
	pq->num_sending = 0;
	pq->added = 0;
	pq->sdma_rb_node = NULL;

	FUNC0(&pq->sent);
	FUNC11(&pq->sent_lock);
	FUNC7(&pq->lock);

	FUNC10(pq->pkt_slab_name, sizeof(pq->pkt_slab_name),
		 "qib-user-sdma-pkts-%u-%02u.%02u", unit, ctxt, sctxt);
	pq->pkt_slab = FUNC5(pq->pkt_slab_name,
					 sizeof(struct qib_user_sdma_pkt),
					 0, 0, NULL);

	if (!pq->pkt_slab)
		goto err_kfree;

	FUNC10(pq->header_cache_name, sizeof(pq->header_cache_name),
		 "qib-user-sdma-headers-%u-%02u.%02u", unit, ctxt, sctxt);
	pq->header_cache = FUNC1(pq->header_cache_name,
					   dev,
					   QIB_USER_SDMA_EXP_HEADER_LENGTH,
					   4, 0);
	if (!pq->header_cache)
		goto err_slab;

	pq->dma_pages_root = RB_ROOT;

	sdma_rb_node = FUNC9(&qib_user_sdma_rb_root,
					current->pid);
	if (sdma_rb_node) {
		sdma_rb_node->refcount++;
	} else {
		sdma_rb_node = FUNC4(sizeof(
			struct qib_user_sdma_rb_node), GFP_KERNEL);
		if (!sdma_rb_node)
			goto err_rb;

		sdma_rb_node->refcount = 1;
		sdma_rb_node->pid = current->pid;

		FUNC8(&qib_user_sdma_rb_root, sdma_rb_node);
	}
	pq->sdma_rb_node = sdma_rb_node;

	goto done;

err_rb:
	FUNC2(pq->header_cache);
err_slab:
	FUNC6(pq->pkt_slab);
err_kfree:
	FUNC3(pq);
	pq = NULL;

done:
	return pq;
}
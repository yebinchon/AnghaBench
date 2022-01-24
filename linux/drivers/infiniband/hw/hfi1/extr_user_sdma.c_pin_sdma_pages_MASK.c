#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct user_sdma_request {struct hfi1_user_sdma_pkt_q* pq; } ;
struct TYPE_4__ {int /*<<< orphan*/  iov_len; scalar_t__ iov_base; } ;
struct user_sdma_iovec {TYPE_2__ iov; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct sdma_mmu_node {int npages; struct page** pages; TYPE_1__ rb; } ;
struct page {int dummy; } ;
struct hfi1_user_sdma_pkt_q {int /*<<< orphan*/  n_locked; int /*<<< orphan*/  mm; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ,struct page**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct page** FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page**) ; 
 int /*<<< orphan*/  FUNC6 (struct page**,struct page**,int) ; 
 int FUNC7 (struct hfi1_user_sdma_pkt_q*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct page**,int,int) ; 

__attribute__((used)) static int FUNC9(struct user_sdma_request *req,
			  struct user_sdma_iovec *iovec,
			  struct sdma_mmu_node *node,
			  int npages)
{
	int pinned, cleared;
	struct page **pages;
	struct hfi1_user_sdma_pkt_q *pq = req->pq;

	pages = FUNC4(npages, sizeof(*pages), GFP_KERNEL);
	if (!pages)
		return -ENOMEM;
	FUNC6(pages, node->pages, node->npages * sizeof(*pages));

	npages -= node->npages;
retry:
	if (!FUNC3(pq->dd, pq->mm,
				FUNC1(&pq->n_locked), npages)) {
		cleared = FUNC7(pq, npages);
		if (cleared >= npages)
			goto retry;
	}
	pinned = FUNC2(pq->mm,
					 ((unsigned long)iovec->iov.iov_base +
					 (node->npages * PAGE_SIZE)), npages, 0,
					 pages + node->npages);
	if (pinned < 0) {
		FUNC5(pages);
		return pinned;
	}
	if (pinned != npages) {
		FUNC8(pq->mm, pages, node->npages, pinned);
		return -EFAULT;
	}
	FUNC5(node->pages);
	node->rb.len = iovec->iov.iov_len;
	node->pages = pages;
	FUNC0(pinned, &pq->n_locked);
	return pinned;
}
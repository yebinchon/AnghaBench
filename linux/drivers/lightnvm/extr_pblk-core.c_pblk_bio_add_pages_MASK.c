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
struct request_queue {int dummy; } ;
struct pblk {int /*<<< orphan*/  page_bio_pool; TYPE_1__* dev; } ;
struct page {int dummy; } ;
struct bio {scalar_t__ bi_vcnt; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct request_queue* q; } ;

/* Variables and functions */
 int PBLK_EXPOSED_PAGE_SIZE ; 
 int FUNC0 (struct request_queue*,struct bio*,struct page*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,struct bio*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*) ; 

int FUNC5(struct pblk *pblk, struct bio *bio, gfp_t flags,
		       int nr_pages)
{
	struct request_queue *q = pblk->dev->q;
	struct page *page;
	int i, ret;

	for (i = 0; i < nr_pages; i++) {
		page = FUNC1(&pblk->page_bio_pool, flags);

		ret = FUNC0(q, bio, page, PBLK_EXPOSED_PAGE_SIZE, 0);
		if (ret != PBLK_EXPOSED_PAGE_SIZE) {
			FUNC4(pblk, "could not add page to bio\n");
			FUNC2(page, &pblk->page_bio_pool);
			goto err;
		}
	}

	return 0;
err:
	FUNC3(pblk, bio, (bio->bi_vcnt - i), i);
	return -1;
}
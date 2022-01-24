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
struct pblk_sec_meta {int dummy; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; TYPE_2__* bio; void* meta_list; } ;
struct TYPE_4__ {int bi_vcnt; TYPE_1__* bi_io_vec; } ;
struct TYPE_3__ {int /*<<< orphan*/  bv_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,void*,int) ; 
 scalar_t__ FUNC3 (struct pblk*) ; 

void FUNC4(struct pblk *pblk, struct nvm_rq *rqd)
{
	void *meta_list = rqd->meta_list;
	void *page;
	int i = 0;

	if (FUNC3(pblk))
		return;

	page = FUNC1(rqd->bio->bi_io_vec[rqd->bio->bi_vcnt - 1].bv_page);
	/* We need to fill oob meta buffer with data from packed metadata */
	for (; i < rqd->nr_ppas; i++)
		FUNC0(FUNC2(pblk, meta_list, i),
			page + (i * sizeof(struct pblk_sec_meta)),
			sizeof(struct pblk_sec_meta));
}
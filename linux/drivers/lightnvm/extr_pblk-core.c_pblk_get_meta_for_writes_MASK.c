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
struct pblk {int dummy; } ;
struct nvm_rq {TYPE_2__* bio; void* meta_list; } ;
struct TYPE_4__ {int bi_vcnt; TYPE_1__* bi_io_vec; } ;
struct TYPE_3__ {int /*<<< orphan*/  bv_page; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pblk*) ; 

void *FUNC2(struct pblk *pblk, struct nvm_rq *rqd)
{
	void *buffer;

	if (FUNC1(pblk)) {
		/* Just use OOB metadata buffer as always */
		buffer = rqd->meta_list;
	} else {
		/* We need to reuse last page of request (packed metadata)
		 * in similar way as traditional oob metadata
		 */
		buffer = FUNC0(
			rqd->bio->bi_io_vec[rqd->bio->bi_vcnt - 1].bv_page);
	}

	return buffer;
}
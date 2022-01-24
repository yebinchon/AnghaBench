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
struct iova_fq {int /*<<< orphan*/  lock; TYPE_1__* entries; } ;
struct iova_domain {int /*<<< orphan*/  fq_timer; int /*<<< orphan*/  fq_timer_on; int /*<<< orphan*/  fq_flush_start_cnt; int /*<<< orphan*/  fq; } ;
struct TYPE_2__ {unsigned long iova_pfn; unsigned long pages; unsigned long data; int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOVA_FQ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct iova_fq*) ; 
 unsigned int FUNC4 (struct iova_fq*) ; 
 int /*<<< orphan*/  FUNC5 (struct iova_domain*,struct iova_fq*) ; 
 int /*<<< orphan*/  FUNC6 (struct iova_domain*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct iova_fq* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC12(struct iova_domain *iovad,
		unsigned long pfn, unsigned long pages,
		unsigned long data)
{
	struct iova_fq *fq = FUNC9(iovad->fq);
	unsigned long flags;
	unsigned idx;

	FUNC10(&fq->lock, flags);

	/*
	 * First remove all entries from the flush queue that have already been
	 * flushed out on another CPU. This makes the fq_full() check below less
	 * likely to be true.
	 */
	FUNC5(iovad, fq);

	if (FUNC3(fq)) {
		FUNC6(iovad);
		FUNC5(iovad, fq);
	}

	idx = FUNC4(fq);

	fq->entries[idx].iova_pfn = pfn;
	fq->entries[idx].pages    = pages;
	fq->entries[idx].data     = data;
	fq->entries[idx].counter  = FUNC0(&iovad->fq_flush_start_cnt);

	FUNC11(&fq->lock, flags);

	/* Avoid false sharing as much as possible. */
	if (!FUNC2(&iovad->fq_timer_on) &&
	    !FUNC1(&iovad->fq_timer_on, 0, 1))
		FUNC7(&iovad->fq_timer,
			  jiffies + FUNC8(IOVA_FQ_TIMEOUT));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {unsigned long length; scalar_t__ offset; } ;
struct rnd_state {int dummy; } ;
struct TYPE_3__ {unsigned long nents; struct scatterlist* sgl; } ;
struct pfn_table {unsigned long start; unsigned long end; TYPE_1__ st; } ;
typedef  unsigned long (* npages_fn_t ) (unsigned long,unsigned long,struct rnd_state*) ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GFP_KERNEL ; 
 unsigned long PAGE_SIZE ; 
 unsigned long PFN_BIAS ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (TYPE_1__*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 
 struct scatterlist* FUNC8 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct pfn_table *pt,
		       unsigned long count, unsigned long max,
		       npages_fn_t npages_fn,
		       struct rnd_state *rnd,
		       int alloc_error)
{
	struct scatterlist *sg;
	unsigned long n, pfn;

	if (FUNC5(&pt->st, max,
			   GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN))
		return alloc_error;

	/* count should be less than 20 to prevent overflowing sg->length */
	FUNC0(FUNC1(count * PAGE_SIZE, sg->length));

	/* Construct a table where each scatterlist contains different number
	 * of entries. The idea is to check that we can iterate the individual
	 * pages from inside the coalesced lists.
	 */
	pt->start = PFN_BIAS;
	pfn = pt->start;
	sg = pt->st.sgl;
	for (n = 0; n < count; n++) {
		unsigned long npages = npages_fn(n, count, rnd);

		/* Nobody expects the Sparse Memmap! */
		if (!FUNC2(FUNC4(pfn),
				     FUNC4(pfn + npages),
				     npages)) {
			FUNC6(&pt->st);
			return -ENOSPC;
		}

		if (n)
			sg = FUNC8(sg);
		FUNC10(sg, FUNC4(pfn), npages * PAGE_SIZE, 0);

		FUNC0(FUNC3(FUNC9(sg)) != pfn);
		FUNC0(sg->length != npages * PAGE_SIZE);
		FUNC0(sg->offset != 0);

		pfn += npages;
	}
	FUNC7(sg);
	pt->st.nents = n;
	pt->end = pfn;

	return 0;
}
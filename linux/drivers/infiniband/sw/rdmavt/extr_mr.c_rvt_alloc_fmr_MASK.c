#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int access_flags; int max_segs; int /*<<< orphan*/  page_shift; int /*<<< orphan*/  lkey; } ;
struct ib_fmr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct rvt_fmr {TYPE_1__ mr; struct ib_fmr ibfmr; } ;
struct ib_pd {int dummy; } ;
struct ib_fmr_attr {int max_pages; int /*<<< orphan*/  page_shift; } ;
struct TYPE_6__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_fmr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PERCPU_REF_INIT_ATOMIC ; 
 int RVT_SEGSZ ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_fmr*) ; 
 struct rvt_fmr* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ mr ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,struct ib_pd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_fmr*,int /*<<< orphan*/ ,int) ; 

struct ib_fmr *FUNC7(struct ib_pd *pd, int mr_access_flags,
			     struct ib_fmr_attr *fmr_attr)
{
	struct rvt_fmr *fmr;
	int m;
	struct ib_fmr *ret;
	int rval = -ENOMEM;

	/* Allocate struct plus pointers to first level page tables. */
	m = (fmr_attr->max_pages + RVT_SEGSZ - 1) / RVT_SEGSZ;
	fmr = FUNC2(FUNC6(fmr, mr.map, m), GFP_KERNEL);
	if (!fmr)
		goto bail;

	rval = FUNC5(&fmr->mr, pd, fmr_attr->max_pages,
				PERCPU_REF_INIT_ATOMIC);
	if (rval)
		goto bail;

	/*
	 * ib_alloc_fmr() will initialize fmr->ibfmr except for lkey &
	 * rkey.
	 */
	rval = FUNC3(&fmr->mr, 0);
	if (rval)
		goto bail_mregion;
	fmr->ibfmr.rkey = fmr->mr.lkey;
	fmr->ibfmr.lkey = fmr->mr.lkey;
	/*
	 * Resources are allocated but no valid mapping (RKEY can't be
	 * used).
	 */
	fmr->mr.access_flags = mr_access_flags;
	fmr->mr.max_segs = fmr_attr->max_pages;
	fmr->mr.page_shift = fmr_attr->page_shift;

	ret = &fmr->ibfmr;
done:
	return ret;

bail_mregion:
	FUNC4(&fmr->mr);
bail:
	FUNC1(fmr);
	ret = FUNC0(rval);
	goto done;
}
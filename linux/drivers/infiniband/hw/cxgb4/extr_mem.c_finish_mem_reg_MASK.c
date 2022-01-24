#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int state; int stag; int page_size; int /*<<< orphan*/  va_fbo; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int rkey; int lkey; unsigned int page_size; int /*<<< orphan*/  iova; int /*<<< orphan*/  length; } ;
struct c4iw_mr {TYPE_3__* rhp; TYPE_2__ attr; TYPE_1__ ibmr; } ;
struct TYPE_6__ {int /*<<< orphan*/  mrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct c4iw_mr*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,struct c4iw_mr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct c4iw_mr *mhp, u32 stag)
{
	u32 mmid;

	mhp->attr.state = 1;
	mhp->attr.stag = stag;
	mmid = stag >> 8;
	mhp->ibmr.rkey = mhp->ibmr.lkey = stag;
	mhp->ibmr.length = mhp->attr.len;
	mhp->ibmr.iova = mhp->attr.va_fbo;
	mhp->ibmr.page_size = 1U << (mhp->attr.page_size + 12);
	FUNC0("mmid 0x%x mhp %p\n", mmid, mhp);
	return FUNC1(&mhp->rhp->mrs, mmid, mhp, GFP_KERNEL);
}
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
typedef  int u32 ;
struct ib_mw {int rkey; } ;
struct TYPE_2__ {int /*<<< orphan*/  stag; } ;
struct c4iw_mw {int /*<<< orphan*/  wr_waitp; int /*<<< orphan*/  dereg_skb; TYPE_1__ attr; struct c4iw_dev* rhp; } ;
struct c4iw_dev {int /*<<< orphan*/  rdev; int /*<<< orphan*/  mrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct c4iw_mw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ib_mw*,int,struct c4iw_mw*) ; 
 struct c4iw_mw* FUNC5 (struct ib_mw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(struct ib_mw *mw)
{
	struct c4iw_dev *rhp;
	struct c4iw_mw *mhp;
	u32 mmid;

	mhp = FUNC5(mw);
	rhp = mhp->rhp;
	mmid = (mw->rkey) >> 8;
	FUNC6(&rhp->mrs, mmid);
	FUNC1(&rhp->rdev, mhp->attr.stag, mhp->dereg_skb,
			  mhp->wr_waitp);
	FUNC3(mhp->dereg_skb);
	FUNC0(mhp->wr_waitp);
	FUNC4("ib_mw %p mmid 0x%x ptr %p\n", mw, mmid, mhp);
	FUNC2(mhp);
	return 0;
}
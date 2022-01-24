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
typedef  int /*<<< orphan*/  u32 ;
struct ib_pd {int dummy; } ;
struct ib_mr {int dummy; } ;
struct c4iw_pd {int /*<<< orphan*/  pdid; struct c4iw_dev* rhp; } ;
struct TYPE_2__ {int mw_bind_enable; unsigned long long len; int /*<<< orphan*/  pbl_addr; scalar_t__ pbl_size; int /*<<< orphan*/  stag; int /*<<< orphan*/  perms; scalar_t__ page_size; scalar_t__ va_fbo; scalar_t__ zbva; int /*<<< orphan*/  pdid; } ;
struct c4iw_mr {int /*<<< orphan*/  wr_waitp; int /*<<< orphan*/  dereg_skb; TYPE_1__ attr; struct ib_mr ibmr; struct c4iw_dev* rhp; } ;
struct c4iw_dev {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  FW_RI_STAG_NSMR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_MW_BIND ; 
 int /*<<< orphan*/  SGE_MAX_WR_LEN ; 
 int /*<<< orphan*/  T4_STAG_UNSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct c4iw_mr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct c4iw_mr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct c4iw_mr* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct ib_pd*) ; 
 struct c4iw_pd* FUNC12 (struct ib_pd*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC14(struct ib_pd *pd, int acc)
{
	struct c4iw_dev *rhp;
	struct c4iw_pd *php;
	struct c4iw_mr *mhp;
	int ret;
	u32 stag = T4_STAG_UNSET;

	FUNC11("ib_pd %p\n", pd);
	php = FUNC12(pd);
	rhp = php->rhp;

	mhp = FUNC10(sizeof(*mhp), GFP_KERNEL);
	if (!mhp)
		return FUNC0(-ENOMEM);
	mhp->wr_waitp = FUNC2(GFP_KERNEL);
	if (!mhp->wr_waitp) {
		ret = -ENOMEM;
		goto err_free_mhp;
	}
	FUNC4(mhp->wr_waitp);

	mhp->dereg_skb = FUNC1(SGE_MAX_WR_LEN, GFP_KERNEL);
	if (!mhp->dereg_skb) {
		ret = -ENOMEM;
		goto err_free_wr_wait;
	}

	mhp->rhp = rhp;
	mhp->attr.pdid = php->pdid;
	mhp->attr.perms = FUNC3(acc);
	mhp->attr.mw_bind_enable = (acc&IB_ACCESS_MW_BIND) == IB_ACCESS_MW_BIND;
	mhp->attr.zbva = 0;
	mhp->attr.va_fbo = 0;
	mhp->attr.page_size = 0;
	mhp->attr.len = ~0ULL;
	mhp->attr.pbl_size = 0;

	ret = FUNC13(&rhp->rdev, 0, &stag, 1, php->pdid,
			      FW_RI_STAG_NSMR, mhp->attr.perms,
			      mhp->attr.mw_bind_enable, 0, 0, ~0ULL, 0, 0, 0,
			      NULL, mhp->wr_waitp);
	if (ret)
		goto err_free_skb;

	ret = FUNC7(mhp, stag);
	if (ret)
		goto err_dereg_mem;
	return &mhp->ibmr;
err_dereg_mem:
	FUNC6(&rhp->rdev, mhp->attr.stag, mhp->attr.pbl_size,
		  mhp->attr.pbl_addr, mhp->dereg_skb, mhp->wr_waitp);
err_free_skb:
	FUNC9(mhp->dereg_skb);
err_free_wr_wait:
	FUNC5(mhp->wr_waitp);
err_free_mhp:
	FUNC8(mhp);
	return FUNC0(ret);
}
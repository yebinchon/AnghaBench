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
struct siw_pbl {int dummy; } ;
struct ib_mr {int dummy; } ;
struct siw_mr {TYPE_1__* mem; struct ib_mr base_mr; } ;
struct siw_device {int /*<<< orphan*/  num_mr; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_2__ {int is_pbl; int stag; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_MR_TYPE_MEM_REG ; 
 scalar_t__ FUNC1 (struct siw_pbl*) ; 
 int PAGE_SIZE ; 
 int FUNC2 (struct siw_pbl*) ; 
 scalar_t__ SIW_MAX_MR ; 
 int SIW_MAX_SGE_PBL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_pbl*) ; 
 int /*<<< orphan*/  FUNC6 (struct siw_mr*,int /*<<< orphan*/ ) ; 
 struct siw_mr* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC8 (struct ib_pd*,char*,...) ; 
 int FUNC9 (struct siw_mr*,struct ib_pd*,struct siw_pbl*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct siw_mr*) ; 
 struct siw_pbl* FUNC11 (int) ; 
 struct siw_device* FUNC12 (int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC13(struct ib_pd *pd, enum ib_mr_type mr_type,
			   u32 max_sge, struct ib_udata *udata)
{
	struct siw_device *sdev = FUNC12(pd->device);
	struct siw_mr *mr = NULL;
	struct siw_pbl *pbl = NULL;
	int rv;

	if (FUNC4(&sdev->num_mr) > SIW_MAX_MR) {
		FUNC8(pd, "too many mr's\n");
		rv = -ENOMEM;
		goto err_out;
	}
	if (mr_type != IB_MR_TYPE_MEM_REG) {
		FUNC8(pd, "mr type %d unsupported\n", mr_type);
		rv = -EOPNOTSUPP;
		goto err_out;
	}
	if (max_sge > SIW_MAX_SGE_PBL) {
		FUNC8(pd, "too many sge's: %d\n", max_sge);
		rv = -ENOMEM;
		goto err_out;
	}
	pbl = FUNC11(max_sge);
	if (FUNC1(pbl)) {
		rv = FUNC2(pbl);
		FUNC8(pd, "pbl allocation failed: %d\n", rv);
		pbl = NULL;
		goto err_out;
	}
	mr = FUNC7(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		rv = -ENOMEM;
		goto err_out;
	}
	rv = FUNC9(mr, pd, pbl, 0, max_sge * PAGE_SIZE, 0);
	if (rv)
		goto err_out;

	mr->mem->is_pbl = 1;

	FUNC8(pd, "[MEM %u]: success\n", mr->mem->stag);

	return &mr->base_mr;

err_out:
	FUNC3(&sdev->num_mr);

	if (!mr) {
		FUNC5(pbl);
	} else {
		if (mr->mem)
			FUNC10(mr);
		FUNC6(mr, rcu);
	}
	FUNC8(pd, "failed: %d\n", rv);

	return FUNC0(rv);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uresp ;
struct mthca_ucontext {scalar_t__ reg_mr_warned; int /*<<< orphan*/  uar; int /*<<< orphan*/  db_tab; } ;
struct mthca_alloc_ucontext_resp {scalar_t__ uarc_size; int /*<<< orphan*/  qp_tab_size; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
struct TYPE_10__ {scalar_t__ uarc_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  num_qps; } ;
struct TYPE_11__ {TYPE_2__ uar_table; TYPE_1__ limits; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ib_udata*,struct mthca_alloc_ucontext_resp*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (struct ib_device*) ; 
 struct mthca_ucontext* FUNC9 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC10(struct ib_ucontext *uctx,
				struct ib_udata *udata)
{
	struct ib_device *ibdev = uctx->device;
	struct mthca_alloc_ucontext_resp uresp = {};
	struct mthca_ucontext *context = FUNC9(uctx);
	int                              err;

	if (!(FUNC8(ibdev)->active))
		return -EAGAIN;

	uresp.qp_tab_size = FUNC8(ibdev)->limits.num_qps;
	if (FUNC5(FUNC8(ibdev)))
		uresp.uarc_size = FUNC8(ibdev)->uar_table.uarc_size;
	else
		uresp.uarc_size = 0;

	err = FUNC6(FUNC8(ibdev), &context->uar);
	if (err)
		return err;

	context->db_tab = FUNC4(FUNC8(ibdev));
	if (FUNC0(context->db_tab)) {
		err = FUNC1(context->db_tab);
		FUNC7(FUNC8(ibdev), &context->uar);
		return err;
	}

	if (FUNC2(udata, &uresp, sizeof(uresp))) {
		FUNC3(FUNC8(ibdev), &context->uar, context->db_tab);
		FUNC7(FUNC8(ibdev), &context->uar);
		return -EFAULT;
	}

	context->reg_mr_warned = 0;

	return 0;
}
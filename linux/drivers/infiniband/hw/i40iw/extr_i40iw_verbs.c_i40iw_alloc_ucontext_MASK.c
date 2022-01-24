#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uresp ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
struct i40iw_ucontext {int abi_ver; int /*<<< orphan*/  qp_reg_mem_list_lock; int /*<<< orphan*/  qp_reg_mem_list; int /*<<< orphan*/  cq_reg_mem_list_lock; int /*<<< orphan*/  cq_reg_mem_list; struct i40iw_device* iwdev; } ;
struct i40iw_device {int max_qp_wr; int /*<<< orphan*/  max_pd; int /*<<< orphan*/  max_qp; } ;
struct i40iw_alloc_ucontext_resp {int wq_size; int kernel_ver; int /*<<< orphan*/  max_pds; int /*<<< orphan*/  max_qps; } ;
struct i40iw_alloc_ucontext_req {int userspace_ver; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int I40IW_ABI_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct i40iw_alloc_ucontext_req*,struct ib_udata*,int) ; 
 scalar_t__ FUNC3 (struct ib_udata*,struct i40iw_alloc_ucontext_resp*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i40iw_device* FUNC5 (struct ib_device*) ; 
 struct i40iw_ucontext* FUNC6 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC7(struct ib_ucontext *uctx,
				struct ib_udata *udata)
{
	struct ib_device *ibdev = uctx->device;
	struct i40iw_device *iwdev = FUNC5(ibdev);
	struct i40iw_alloc_ucontext_req req;
	struct i40iw_alloc_ucontext_resp uresp = {};
	struct i40iw_ucontext *ucontext = FUNC6(uctx);

	if (FUNC2(&req, udata, sizeof(req)))
		return -EINVAL;

	if (req.userspace_ver < 4 || req.userspace_ver > I40IW_ABI_VER) {
		FUNC1("Unsupported provider library version %u.\n", req.userspace_ver);
		return -EINVAL;
	}

	uresp.max_qps = iwdev->max_qp;
	uresp.max_pds = iwdev->max_pd;
	uresp.wq_size = iwdev->max_qp_wr * 2;
	uresp.kernel_ver = req.userspace_ver;

	ucontext->iwdev = iwdev;
	ucontext->abi_ver = req.userspace_ver;

	if (FUNC3(udata, &uresp, sizeof(uresp)))
		return -EFAULT;

	FUNC0(&ucontext->cq_reg_mem_list);
	FUNC4(&ucontext->cq_reg_mem_list_lock);
	FUNC0(&ucontext->qp_reg_mem_list);
	FUNC4(&ucontext->qp_reg_mem_list_lock);

	return 0;
}
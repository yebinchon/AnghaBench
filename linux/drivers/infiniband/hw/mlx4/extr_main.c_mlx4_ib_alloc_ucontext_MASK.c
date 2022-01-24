#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_ucontext {int /*<<< orphan*/  uar; int /*<<< orphan*/  wqn_ranges_mutex; int /*<<< orphan*/  wqn_ranges_list; int /*<<< orphan*/  db_page_mutex; int /*<<< orphan*/  db_page_list; } ;
struct mlx4_ib_dev {TYPE_3__* dev; int /*<<< orphan*/  ib_active; } ;
struct mlx4_ib_alloc_ucontext_resp_v3 {int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  bf_regs_per_page; int /*<<< orphan*/  bf_reg_size; int /*<<< orphan*/  qp_tab_size; int /*<<< orphan*/  dev_caps; } ;
struct mlx4_ib_alloc_ucontext_resp {int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  bf_regs_per_page; int /*<<< orphan*/  bf_reg_size; int /*<<< orphan*/  qp_tab_size; int /*<<< orphan*/  dev_caps; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct TYPE_6__ {scalar_t__ uverbs_abi_ver; } ;
struct ib_device {TYPE_2__ ops; } ;
typedef  int /*<<< orphan*/  resp_v3 ;
typedef  int /*<<< orphan*/  resp ;
struct TYPE_5__ {int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  bf_regs_per_page; int /*<<< orphan*/  bf_reg_size; int /*<<< orphan*/  num_qps; int /*<<< orphan*/  userspace_caps; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION ; 
 int FUNC1 (struct ib_udata*,struct mlx4_ib_alloc_ucontext_resp_v3*,int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC5 (struct ib_device*) ; 
 struct mlx4_ib_ucontext* FUNC6 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC7(struct ib_ucontext *uctx,
				  struct ib_udata *udata)
{
	struct ib_device *ibdev = uctx->device;
	struct mlx4_ib_dev *dev = FUNC5(ibdev);
	struct mlx4_ib_ucontext *context = FUNC6(uctx);
	struct mlx4_ib_alloc_ucontext_resp_v3 resp_v3;
	struct mlx4_ib_alloc_ucontext_resp resp;
	int err;

	if (!dev->ib_active)
		return -EAGAIN;

	if (ibdev->ops.uverbs_abi_ver ==
	    MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION) {
		resp_v3.qp_tab_size      = dev->dev->caps.num_qps;
		resp_v3.bf_reg_size      = dev->dev->caps.bf_reg_size;
		resp_v3.bf_regs_per_page = dev->dev->caps.bf_regs_per_page;
	} else {
		resp.dev_caps	      = dev->dev->caps.userspace_caps;
		resp.qp_tab_size      = dev->dev->caps.num_qps;
		resp.bf_reg_size      = dev->dev->caps.bf_reg_size;
		resp.bf_regs_per_page = dev->dev->caps.bf_regs_per_page;
		resp.cqe_size	      = dev->dev->caps.cqe_size;
	}

	err = FUNC2(FUNC5(ibdev)->dev, &context->uar);
	if (err)
		return err;

	FUNC0(&context->db_page_list);
	FUNC4(&context->db_page_mutex);

	FUNC0(&context->wqn_ranges_list);
	FUNC4(&context->wqn_ranges_mutex);

	if (ibdev->ops.uverbs_abi_ver == MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION)
		err = FUNC1(udata, &resp_v3, sizeof(resp_v3));
	else
		err = FUNC1(udata, &resp, sizeof(resp));

	if (err) {
		FUNC3(FUNC5(ibdev)->dev, &context->uar);
		return -EFAULT;
	}

	return err;
}
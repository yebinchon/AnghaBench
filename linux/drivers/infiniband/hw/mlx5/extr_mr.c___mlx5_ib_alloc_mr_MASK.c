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
struct ib_mr {int /*<<< orphan*/  device; } ;
struct mlx5_ib_mr {struct ib_mr ibmr; int /*<<< orphan*/ * umem; } ;
typedef  struct mlx5_ib_mr u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;

/* Variables and functions */
 int FUNC0 (struct mlx5_ib_mr,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IB_MR_TYPE_INTEGRITY 130 
#define  IB_MR_TYPE_MEM_REG 129 
#define  IB_MR_TYPE_SG_GAPS 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_mkey_in ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_mr*) ; 
 struct mlx5_ib_mr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ib_pd*,struct mlx5_ib_mr*,struct mlx5_ib_mr,struct mlx5_ib_mr,struct mlx5_ib_mr*,int) ; 
 int FUNC6 (struct ib_pd*,struct mlx5_ib_mr*,int,struct mlx5_ib_mr*,int) ; 
 int FUNC7 (struct ib_pd*,struct mlx5_ib_mr*,int,struct mlx5_ib_mr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*,char*,int) ; 
 struct mlx5_ib_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_mr *FUNC10(struct ib_pd *pd,
					enum ib_mr_type mr_type, u32 max_num_sg,
					u32 max_num_meta_sg)
{
	struct mlx5_ib_dev *dev = FUNC9(pd->device);
	int inlen = FUNC2(create_mkey_in);
	int ndescs = FUNC0(max_num_sg, 4);
	struct mlx5_ib_mr *mr;
	u32 *in;
	int err;

	mr = FUNC4(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC1(-ENOMEM);

	in = FUNC4(inlen, GFP_KERNEL);
	if (!in) {
		err = -ENOMEM;
		goto err_free;
	}

	mr->ibmr.device = pd->device;
	mr->umem = NULL;

	switch (mr_type) {
	case IB_MR_TYPE_MEM_REG:
		err = FUNC6(pd, mr, ndescs, in, inlen);
		break;
	case IB_MR_TYPE_SG_GAPS:
		err = FUNC7(pd, mr, ndescs, in, inlen);
		break;
	case IB_MR_TYPE_INTEGRITY:
		err = FUNC5(pd, mr, max_num_sg,
						 max_num_meta_sg, in, inlen);
		break;
	default:
		FUNC8(dev, "Invalid mr type %d\n", mr_type);
		err = -EINVAL;
	}

	if (err)
		goto err_free_in;

	FUNC3(in);

	return &mr->ibmr;

err_free_in:
	FUNC3(in);
err_free:
	FUNC3(mr);
	return FUNC1(err);
}
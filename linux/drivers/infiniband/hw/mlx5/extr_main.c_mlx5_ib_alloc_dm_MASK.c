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
struct uverbs_attr_bundle {int dummy; } ;
struct ib_dm {int dummy; } ;
struct mlx5_ib_dm {int type; struct ib_dm ibdm; } ;
struct ib_ucontext {int dummy; } ;
struct ib_dm_alloc_attr {int /*<<< orphan*/  alignment; int /*<<< orphan*/  length; } ;
struct ib_device {int dummy; } ;
typedef  enum mlx5_ib_uapi_dm_type { ____Placeholder_mlx5_ib_uapi_dm_type } mlx5_ib_uapi_dm_type ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct ib_dm* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_IB_ATTR_ALLOC_DM_REQ_TYPE ; 
#define  MLX5_IB_UAPI_DM_TYPE_HEADER_MODIFY_SW_ICM 130 
#define  MLX5_IB_UAPI_DM_TYPE_MEMIC 129 
#define  MLX5_IB_UAPI_DM_TYPE_STEERING_SW_ICM 128 
 int /*<<< orphan*/  MLX5_SW_ICM_TYPE_HEADER_MODIFY ; 
 int /*<<< orphan*/  MLX5_SW_ICM_TYPE_STEERING ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ib_ucontext*,struct mlx5_ib_dm*,struct ib_dm_alloc_attr*,struct uverbs_attr_bundle*) ; 
 int FUNC3 (struct ib_ucontext*,struct mlx5_ib_dm*,struct ib_dm_alloc_attr*,struct uverbs_attr_bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dm*) ; 
 struct mlx5_ib_dm* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*) ; 
 int FUNC8 (int*,struct uverbs_attr_bundle*,int /*<<< orphan*/ ,int) ; 

struct ib_dm *FUNC9(struct ib_device *ibdev,
			       struct ib_ucontext *context,
			       struct ib_dm_alloc_attr *attr,
			       struct uverbs_attr_bundle *attrs)
{
	struct mlx5_ib_dm *dm;
	enum mlx5_ib_uapi_dm_type type;
	int err;

	err = FUNC8(&type, attrs,
				       MLX5_IB_ATTR_ALLOC_DM_REQ_TYPE,
				       MLX5_IB_UAPI_DM_TYPE_MEMIC);
	if (err)
		return FUNC0(err);

	FUNC6(FUNC7(ibdev), "alloc_dm req: dm_type=%d user_length=0x%llx log_alignment=%d\n",
		    type, attr->length, attr->alignment);

	err = FUNC1(FUNC7(ibdev), type);
	if (err)
		return FUNC0(err);

	dm = FUNC5(sizeof(*dm), GFP_KERNEL);
	if (!dm)
		return FUNC0(-ENOMEM);

	dm->type = type;

	switch (type) {
	case MLX5_IB_UAPI_DM_TYPE_MEMIC:
		err = FUNC2(context, dm,
					    attr,
					    attrs);
		break;
	case MLX5_IB_UAPI_DM_TYPE_STEERING_SW_ICM:
		err = FUNC3(context, dm,
					     attr, attrs,
					     MLX5_SW_ICM_TYPE_STEERING);
		break;
	case MLX5_IB_UAPI_DM_TYPE_HEADER_MODIFY_SW_ICM:
		err = FUNC3(context, dm,
					     attr, attrs,
					     MLX5_SW_ICM_TYPE_HEADER_MODIFY);
		break;
	default:
		err = -EOPNOTSUPP;
	}

	if (err)
		goto err_free;

	return &dm->ibdm;

err_free:
	FUNC4(dm);
	return FUNC0(err);
}
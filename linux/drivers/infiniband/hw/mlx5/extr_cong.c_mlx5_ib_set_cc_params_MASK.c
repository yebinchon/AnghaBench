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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5_ib_cong_node_type { ____Placeholder_mlx5_ib_cong_node_type } mlx5_ib_cong_node_type ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_MODIFY_CONG_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cong_protocol ; 
 int /*<<< orphan*/  congestion_parameters ; 
 int /*<<< orphan*/  field_select ; 
 int /*<<< orphan*/  field_select_r_roce_rp ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,void*,int) ; 
 struct mlx5_core_dev* FUNC6 (struct mlx5_ib_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int,int*) ; 
 int /*<<< orphan*/  modify_cong_params_in ; 
 int /*<<< orphan*/  opcode ; 

__attribute__((used)) static int FUNC10(struct mlx5_ib_dev *dev, u8 port_num,
				 int offset, u32 var)
{
	int inlen = FUNC2(modify_cong_params_in);
	void *in;
	void *field;
	enum mlx5_ib_cong_node_type node;
	struct mlx5_core_dev *mdev;
	u32 attr_mask = 0;
	int err;

	/* Takes a 1-based port number */
	mdev = FUNC6(dev, port_num + 1, NULL);
	if (!mdev)
		return -ENODEV;

	in = FUNC4(inlen, GFP_KERNEL);
	if (!in) {
		err = -ENOMEM;
		goto alloc_err;
	}

	FUNC1(modify_cong_params_in, in, opcode,
		 MLX5_CMD_OP_MODIFY_CONG_PARAMS);

	node = FUNC7(offset);
	FUNC1(modify_cong_params_in, in, cong_protocol, node);

	field = FUNC0(modify_cong_params_in, in, congestion_parameters);
	FUNC9(field, offset, var, &attr_mask);

	field = FUNC0(modify_cong_params_in, in, field_select);
	FUNC1(field_select_r_roce_rp, field, field_select_r_roce_rp,
		 attr_mask);

	err = FUNC5(mdev, in, inlen);
	FUNC3(in);
alloc_err:
	FUNC8(dev, port_num + 1);
	return err;
}
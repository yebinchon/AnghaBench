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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5_ib_cong_node_type { ____Placeholder_mlx5_ib_cong_node_type } mlx5_ib_cong_node_type ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  congestion_parameters ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_core_dev*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 struct mlx5_core_dev* FUNC6 (struct mlx5_ib_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*,scalar_t__) ; 
 int /*<<< orphan*/  query_cong_params_out ; 

__attribute__((used)) static int FUNC9(struct mlx5_ib_dev *dev, u8 port_num,
				 int offset, u32 *var)
{
	int outlen = FUNC1(query_cong_params_out);
	void *out;
	void *field;
	int err;
	enum mlx5_ib_cong_node_type node;
	struct mlx5_core_dev *mdev;

	/* Takes a 1-based port number */
	mdev = FUNC6(dev, port_num + 1, NULL);
	if (!mdev)
		return -ENODEV;

	out = FUNC3(outlen, GFP_KERNEL);
	if (!out) {
		err = -ENOMEM;
		goto alloc_err;
	}

	node = FUNC7(offset);

	err = FUNC4(mdev, node, out, outlen);
	if (err)
		goto free;

	field = FUNC0(query_cong_params_out, out, congestion_parameters);
	*var = FUNC5(field, offset);

free:
	FUNC2(out);
alloc_err:
	FUNC8(dev, port_num + 1);
	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  key; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct mlx5_ib_mr {int access_mode; int desc_size; int max_descs; TYPE_2__ mmkey; TYPE_1__ ibmr; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_MKEY_MR ; 
 int FUNC0 (int /*<<< orphan*/ ,struct mlx5_ib_mr*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_pd*,int /*<<< orphan*/ *,int,int,int) ; 
 struct mlx5_ib_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ib_pd *pd, struct mlx5_ib_mr *mr,
				  int ndescs, int desc_size, int page_shift,
				  int access_mode, u32 *in, int inlen)
{
	struct mlx5_ib_dev *dev = FUNC4(pd->device);
	int err;

	mr->access_mode = access_mode;
	mr->desc_size = desc_size;
	mr->max_descs = ndescs;

	err = FUNC0(pd->device, mr, ndescs, desc_size);
	if (err)
		return err;

	FUNC3(pd, in, ndescs, access_mode, page_shift);

	err = FUNC1(dev->mdev, &mr->mmkey, in, inlen);
	if (err)
		goto err_free_descs;

	mr->mmkey.type = MLX5_MKEY_MR;
	mr->ibmr.lkey = mr->mmkey.key;
	mr->ibmr.rkey = mr->mmkey.key;

	return 0;

err_free_descs:
	FUNC2(mr);
	return err;
}
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
typedef  int u8 ;
struct mlx5_core_mkey {int key; void* pd; void* size; void* iova; int /*<<< orphan*/  type; } ;
struct mlx5_ib_devx_mr {void* ndescs; struct mlx5_core_mkey mmkey; } ;
struct mlx5_ib_dev {TYPE_2__* mdev; } ;
struct devx_obj {struct mlx5_ib_devx_mr devx_mr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mkey_table; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_MKEY_INDIRECT_DEVX ; 
 int /*<<< orphan*/  create_mkey_in ; 
 void* create_mkey_out ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int /*<<< orphan*/  mkey_7_0 ; 
 int /*<<< orphan*/  mkey_index ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  start_addr ; 
 int /*<<< orphan*/  translations_octword_size ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5_core_mkey*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct devx_obj *obj,
				     struct mlx5_ib_dev *dev,
				     void *in, void *out)
{
	struct mlx5_ib_devx_mr *devx_mr = &obj->devx_mr;
	struct mlx5_core_mkey *mkey;
	void *mkc;
	u8 key;

	mkey = &devx_mr->mmkey;
	mkc = FUNC0(create_mkey_in, in, memory_key_mkey_entry);
	key = FUNC1(mkc, mkc, mkey_7_0);
	mkey->key = FUNC4(
			FUNC1(create_mkey_out, out, mkey_index)) | key;
	mkey->type = MLX5_MKEY_INDIRECT_DEVX;
	mkey->iova = FUNC2(mkc, mkc, start_addr);
	mkey->size = FUNC2(mkc, mkc, len);
	mkey->pd = FUNC1(mkc, mkc, pd);
	devx_mr->ndescs = FUNC1(mkc, mkc, translations_octword_size);

	return FUNC5(FUNC6(&dev->mdev->priv.mkey_table,
			       FUNC3(mkey->key), mkey, GFP_KERNEL));
}
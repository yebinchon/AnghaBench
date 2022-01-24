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
typedef  int u8 ;
struct mlx5_ib_dev {int dummy; } ;
struct devx_obj {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INFINIBAND_ON_DEMAND_PAGING ; 
 int /*<<< orphan*/  DEVX_OBJ_FLAGS_INDIRECT_MKEY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 
 int MLX5_MKC_ACCESS_MODE_KLMS ; 
 int MLX5_MKC_ACCESS_MODE_KSM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  access_mode_1_0 ; 
 int /*<<< orphan*/  access_mode_4_2 ; 
 int /*<<< orphan*/  create_mkey_in ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int /*<<< orphan*/  mkey_umem_valid ; 

__attribute__((used)) static int FUNC6(struct mlx5_ib_dev *dev,
				   struct devx_obj *obj,
				   void *in, int in_len)
{
	int min_len = FUNC2(create_mkey_in, memory_key_mkey_entry) +
			FUNC3(create_mkey_in,
			memory_key_mkey_entry);
	void *mkc;
	u8 access_mode;

	if (in_len < min_len)
		return -EINVAL;

	mkc = FUNC1(create_mkey_in, in, memory_key_mkey_entry);

	access_mode = FUNC4(mkc, mkc, access_mode_1_0);
	access_mode |= FUNC4(mkc, mkc, access_mode_4_2) << 2;

	if (access_mode == MLX5_MKC_ACCESS_MODE_KLMS ||
		access_mode == MLX5_MKC_ACCESS_MODE_KSM) {
		if (FUNC0(CONFIG_INFINIBAND_ON_DEMAND_PAGING))
			obj->flags |= DEVX_OBJ_FLAGS_INDIRECT_MKEY;
		return 0;
	}

	FUNC5(create_mkey_in, in, mkey_umem_valid, 1);
	return 0;
}
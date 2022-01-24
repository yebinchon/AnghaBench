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
struct mlx5_pagefault {int event_subtype; } ;
struct mlx5_ib_dev {int dummy; } ;

/* Variables and functions */
#define  MLX5_PFAULT_SUBTYPE_RDMA 129 
#define  MLX5_PFAULT_SUBTYPE_WQE 128 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,struct mlx5_pagefault*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,struct mlx5_pagefault*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,struct mlx5_pagefault*,int) ; 

__attribute__((used)) static void FUNC4(struct mlx5_ib_dev *dev, struct mlx5_pagefault *pfault)
{
	u8 event_subtype = pfault->event_subtype;

	switch (event_subtype) {
	case MLX5_PFAULT_SUBTYPE_WQE:
		FUNC2(dev, pfault);
		break;
	case MLX5_PFAULT_SUBTYPE_RDMA:
		FUNC1(dev, pfault);
		break;
	default:
		FUNC0(dev, "Invalid page fault event subtype: 0x%x\n",
			    event_subtype);
		FUNC3(dev, pfault, 1);
	}
}
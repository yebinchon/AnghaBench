#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5_ib_dev {int dummy; } ;
struct devx_umem_reg_cmd {void* in; } ;
struct devx_umem {TYPE_1__* umem; scalar_t__ page_shift; scalar_t__ page_offset; int /*<<< orphan*/  ncont; } ;
typedef  void __be64 ;
struct TYPE_2__ {scalar_t__ writable; } ;

/* Variables and functions */
 scalar_t__ MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC0 (void*,void*,void*) ; 
 scalar_t__ MLX5_CMD_OP_CREATE_UMEM ; 
 int MLX5_IB_MTT_READ ; 
 int MLX5_IB_MTT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* create_umem_in ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,TYPE_1__*,scalar_t__,void*,int) ; 
 int /*<<< orphan*/  num_of_mtt ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  page_offset ; 

__attribute__((used)) static void FUNC4(struct mlx5_ib_dev *dev,
				    struct devx_umem *obj,
				    struct devx_umem_reg_cmd *cmd)
{
	void *umem;
	__be64 *mtt;

	umem = FUNC0(create_umem_in, cmd->in, umem);
	mtt = (__be64 *)FUNC0(umem, umem, mtt);

	FUNC1(create_umem_in, cmd->in, opcode, MLX5_CMD_OP_CREATE_UMEM);
	FUNC2(umem, umem, num_of_mtt, obj->ncont);
	FUNC1(umem, umem, log_page_size, obj->page_shift -
					    MLX5_ADAPTER_PAGE_SHIFT);
	FUNC1(umem, umem, page_offset, obj->page_offset);
	FUNC3(dev, obj->umem, obj->page_shift, mtt,
			     (obj->umem->writable ? MLX5_IB_MTT_WRITE : 0) |
			     MLX5_IB_MTT_READ);
}
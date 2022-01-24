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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_srq_attr {int /*<<< orphan*/  uid; int /*<<< orphan*/  pas; int /*<<< orphan*/  user_index; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_core_srq {int /*<<< orphan*/  uid; int /*<<< orphan*/  srqn; } ;
typedef  int /*<<< orphan*/  create_out ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,void*,void*) ; 
 int /*<<< orphan*/  MLX5_CMD_OP_CREATE_XRC_SRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* create_xrc_srq_in ; 
 int /*<<< orphan*/  create_xrc_srq_out ; 
 int FUNC5 (struct mlx5_srq_attr*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  FUNC11 (void*,struct mlx5_srq_attr*) ; 
 int /*<<< orphan*/  uid ; 
 int /*<<< orphan*/  user_index ; 
 void* xrc_srq_context_entry ; 
 int /*<<< orphan*/  xrc_srqn ; 

__attribute__((used)) static int FUNC12(struct mlx5_ib_dev *dev,
			      struct mlx5_core_srq *srq,
			      struct mlx5_srq_attr *in)
{
	u32 create_out[FUNC4(create_xrc_srq_out)];
	void *create_in;
	void *xrc_srqc;
	void *pas;
	int pas_size;
	int inlen;
	int err;

	pas_size  = FUNC5(in);
	inlen	  = FUNC3(create_xrc_srq_in) + pas_size;
	create_in = FUNC7(inlen, GFP_KERNEL);
	if (!create_in)
		return -ENOMEM;

	FUNC2(create_xrc_srq_in, create_in, uid, in->uid);
	xrc_srqc = FUNC0(create_xrc_srq_in, create_in,
				xrc_srq_context_entry);
	pas	 = FUNC0(create_xrc_srq_in, create_in, pas);

	FUNC11(xrc_srqc, in);
	FUNC2(xrc_srqc, xrc_srqc, user_index, in->user_index);
	FUNC8(pas, in->pas, pas_size);
	FUNC2(create_xrc_srq_in, create_in, opcode,
		 MLX5_CMD_OP_CREATE_XRC_SRQ);

	FUNC9(create_out, 0, sizeof(create_out));
	err = FUNC10(dev->mdev, create_in, inlen, create_out,
			    sizeof(create_out));
	if (err)
		goto out;

	srq->srqn = FUNC1(create_xrc_srq_out, create_out, xrc_srqn);
	srq->uid = in->uid;
out:
	FUNC6(create_in);
	return err;
}
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
typedef  void u32 ;
struct mlx5_srq_attr {int /*<<< orphan*/  flags; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_core_srq {int /*<<< orphan*/  srqn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CMD_OP_QUERY_RMP ; 
 scalar_t__ FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_RMPC_STATE_RDY ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_SRQ_FLAG_ERR ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct mlx5_srq_attr*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*,int,void*,int) ; 
 int /*<<< orphan*/  opcode ; 
 void* query_rmp_in ; 
 void* query_rmp_out ; 
 int /*<<< orphan*/  rmp_context ; 
 int /*<<< orphan*/  rmpn ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC8(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq,
			 struct mlx5_srq_attr *out)
{
	u32 *rmp_out = NULL;
	u32 *rmp_in = NULL;
	void *rmpc;
	int outlen;
	int inlen;
	int err;

	outlen = FUNC3(query_rmp_out);
	inlen = FUNC3(query_rmp_in);

	rmp_out = FUNC6(outlen, GFP_KERNEL);
	rmp_in = FUNC6(inlen, GFP_KERNEL);
	if (!rmp_out || !rmp_in) {
		err = -ENOMEM;
		goto out;
	}

	FUNC2(query_rmp_in, rmp_in, opcode, MLX5_CMD_OP_QUERY_RMP);
	FUNC2(query_rmp_in, rmp_in, rmpn,   srq->srqn);
	err = FUNC7(dev->mdev, rmp_in, inlen, rmp_out, outlen);
	if (err)
		goto out;

	rmpc = FUNC0(query_rmp_out, rmp_out, rmp_context);
	FUNC4(FUNC0(rmpc, rmpc, wq), out);
	if (FUNC1(rmpc, rmpc, state) != MLX5_RMPC_STATE_RDY)
		out->flags |= MLX5_SRQ_FLAG_ERR;

out:
	FUNC5(rmp_out);
	FUNC5(rmp_in);
	return err;
}
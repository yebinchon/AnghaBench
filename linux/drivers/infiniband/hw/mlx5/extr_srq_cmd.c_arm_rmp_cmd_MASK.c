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
typedef  int u16 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_core_srq {int srqn; int uid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,void*,void*) ; 
 int MLX5_CMD_OP_MODIFY_RMP ; 
 int MLX5_RMPC_STATE_RDY ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int,int) ; 
 int FUNC2 (void*) ; 
 void* ctx ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int,void*,int) ; 
 void* modify_rmp_in ; 
 void* modify_rmp_out ; 
 int opcode ; 
 void* rmp_bitmask ; 
 int rmp_state ; 
 int rmpn ; 
 int state ; 
 int uid ; 

__attribute__((used)) static int FUNC6(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq,
		       u16 lwm)
{
	void *out = NULL;
	void *in = NULL;
	void *rmpc;
	void *wq;
	void *bitmask;
	int outlen;
	int inlen;
	int err;

	inlen = FUNC2(modify_rmp_in);
	outlen = FUNC2(modify_rmp_out);

	in = FUNC4(inlen, GFP_KERNEL);
	out = FUNC4(outlen, GFP_KERNEL);
	if (!in || !out) {
		err = -ENOMEM;
		goto out;
	}

	rmpc =	  FUNC0(modify_rmp_in,   in,   ctx);
	bitmask = FUNC0(modify_rmp_in,   in,   bitmask);
	wq   =	  FUNC0(rmpc,	        rmpc, wq);

	FUNC1(modify_rmp_in, in,	 rmp_state, MLX5_RMPC_STATE_RDY);
	FUNC1(modify_rmp_in, in,	 rmpn,      srq->srqn);
	FUNC1(modify_rmp_in, in, uid, srq->uid);
	FUNC1(wq,		wq,	 lwm,	    lwm);
	FUNC1(rmp_bitmask,	bitmask, lwm,	    1);
	FUNC1(rmpc, rmpc, state, MLX5_RMPC_STATE_RDY);
	FUNC1(modify_rmp_in, in, opcode, MLX5_CMD_OP_MODIFY_RMP);

	err = FUNC5(dev->mdev, in, inlen, out, outlen);

out:
	FUNC3(in);
	FUNC3(out);
	return err;
}
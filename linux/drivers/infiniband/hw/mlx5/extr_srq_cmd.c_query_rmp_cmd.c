
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u32 ;
struct mlx5_srq_attr {int flags; } ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_core_srq {int srqn; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_CMD_OP_QUERY_RMP ;
 scalar_t__ MLX5_GET (void*,void*,int ) ;
 scalar_t__ MLX5_RMPC_STATE_RDY ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int MLX5_SRQ_FLAG_ERR ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int get_wq (void*,struct mlx5_srq_attr*) ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_cmd_exec (int ,void*,int,void*,int) ;
 int opcode ;
 void* query_rmp_in ;
 void* query_rmp_out ;
 int rmp_context ;
 int rmpn ;
 int state ;
 int wq ;

__attribute__((used)) static int query_rmp_cmd(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq,
    struct mlx5_srq_attr *out)
{
 u32 *rmp_out = ((void*)0);
 u32 *rmp_in = ((void*)0);
 void *rmpc;
 int outlen;
 int inlen;
 int err;

 outlen = MLX5_ST_SZ_BYTES(query_rmp_out);
 inlen = MLX5_ST_SZ_BYTES(query_rmp_in);

 rmp_out = kvzalloc(outlen, GFP_KERNEL);
 rmp_in = kvzalloc(inlen, GFP_KERNEL);
 if (!rmp_out || !rmp_in) {
  err = -ENOMEM;
  goto out;
 }

 MLX5_SET(query_rmp_in, rmp_in, opcode, MLX5_CMD_OP_QUERY_RMP);
 MLX5_SET(query_rmp_in, rmp_in, rmpn, srq->srqn);
 err = mlx5_cmd_exec(dev->mdev, rmp_in, inlen, rmp_out, outlen);
 if (err)
  goto out;

 rmpc = MLX5_ADDR_OF(query_rmp_out, rmp_out, rmp_context);
 get_wq(MLX5_ADDR_OF(rmpc, rmpc, wq), out);
 if (MLX5_GET(rmpc, rmpc, state) != MLX5_RMPC_STATE_RDY)
  out->flags |= MLX5_SRQ_FLAG_ERR;

out:
 kvfree(rmp_out);
 kvfree(rmp_in);
 return err;
}

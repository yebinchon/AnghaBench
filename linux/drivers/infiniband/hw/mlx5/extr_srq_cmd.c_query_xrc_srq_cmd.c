
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xrcsrq_in ;
typedef int u32 ;
struct mlx5_srq_attr {int flags; } ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_core_srq {int srqn; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_CMD_OP_QUERY_XRC_SRQ ;
 scalar_t__ MLX5_GET (void*,void*,int ) ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_SRQ_FLAG_ERR ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 scalar_t__ MLX5_XRC_SRQC_STATE_GOOD ;
 int get_srqc (void*,struct mlx5_srq_attr*) ;
 int kvfree (int *) ;
 int * kvzalloc (int ,int ) ;
 int memset (int *,int ,int) ;
 int mlx5_cmd_exec (int ,int *,int,int *,int ) ;
 int opcode ;
 int query_xrc_srq_in ;
 int query_xrc_srq_out ;
 int state ;
 int xrc_srq_context_entry ;
 int xrc_srqn ;

__attribute__((used)) static int query_xrc_srq_cmd(struct mlx5_ib_dev *dev,
        struct mlx5_core_srq *srq,
        struct mlx5_srq_attr *out)
{
 u32 xrcsrq_in[MLX5_ST_SZ_DW(query_xrc_srq_in)];
 u32 *xrcsrq_out;
 void *xrc_srqc;
 int err;

 xrcsrq_out = kvzalloc(MLX5_ST_SZ_BYTES(query_xrc_srq_out), GFP_KERNEL);
 if (!xrcsrq_out)
  return -ENOMEM;
 memset(xrcsrq_in, 0, sizeof(xrcsrq_in));

 MLX5_SET(query_xrc_srq_in, xrcsrq_in, opcode,
   MLX5_CMD_OP_QUERY_XRC_SRQ);
 MLX5_SET(query_xrc_srq_in, xrcsrq_in, xrc_srqn, srq->srqn);

 err = mlx5_cmd_exec(dev->mdev, xrcsrq_in, sizeof(xrcsrq_in),
       xrcsrq_out, MLX5_ST_SZ_BYTES(query_xrc_srq_out));
 if (err)
  goto out;

 xrc_srqc = MLX5_ADDR_OF(query_xrc_srq_out, xrcsrq_out,
    xrc_srq_context_entry);
 get_srqc(xrc_srqc, out);
 if (MLX5_GET(xrc_srqc, xrc_srqc, state) != MLX5_XRC_SRQC_STATE_GOOD)
  out->flags |= MLX5_SRQ_FLAG_ERR;

out:
 kvfree(xrcsrq_out);
 return err;
}

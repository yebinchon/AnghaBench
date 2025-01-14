
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int qpn; } ;
struct TYPE_5__ {TYPE_1__ mqp; } ;
struct mlx5_ib_rq {scalar_t__ tirn; TYPE_2__ base; } ;
struct mlx5_ib_dev {int mdev; scalar_t__ is_rep; } ;
struct ib_pd {int dummy; } ;
struct TYPE_6__ {int uid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int*,int ) ;
 scalar_t__ MLX5_GET (void*,void*,int ) ;
 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC ;
 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC ;
 int MLX5_QP_FLAG_TUNNEL_OFFLOADS ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int MLX5_TIRC_DISP_TYPE_DIRECT ;
 int MLX5_TIRC_SELF_LB_BLOCK_BLOCK_MULTICAST ;
 int MLX5_TIRC_SELF_LB_BLOCK_BLOCK_UNICAST ;
 int create_tir_in ;
 int create_tir_out ;
 int ctx ;
 int destroy_raw_packet_qp_tir (struct mlx5_ib_dev*,struct mlx5_ib_rq*,int ,struct ib_pd*) ;
 int disp_type ;
 int inline_rqn ;
 int kvfree (int*) ;
 int* kvzalloc (int,int ) ;
 int mlx5_core_create_tir_out (int ,int*,int,int*,int) ;
 int mlx5_ib_enable_lb (struct mlx5_ib_dev*,int,int) ;
 int self_lb_block ;
 int tirn ;
 TYPE_3__* to_mpd (struct ib_pd*) ;
 int transport_domain ;
 int tunneled_offload_en ;
 int uid ;

__attribute__((used)) static int create_raw_packet_qp_tir(struct mlx5_ib_dev *dev,
        struct mlx5_ib_rq *rq, u32 tdn,
        u32 *qp_flags_en,
        struct ib_pd *pd,
        u32 *out, int outlen)
{
 u8 lb_flag = 0;
 u32 *in;
 void *tirc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(create_tir_in);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 MLX5_SET(create_tir_in, in, uid, to_mpd(pd)->uid);
 tirc = MLX5_ADDR_OF(create_tir_in, in, ctx);
 MLX5_SET(tirc, tirc, disp_type, MLX5_TIRC_DISP_TYPE_DIRECT);
 MLX5_SET(tirc, tirc, inline_rqn, rq->base.mqp.qpn);
 MLX5_SET(tirc, tirc, transport_domain, tdn);
 if (*qp_flags_en & MLX5_QP_FLAG_TUNNEL_OFFLOADS)
  MLX5_SET(tirc, tirc, tunneled_offload_en, 1);

 if (*qp_flags_en & MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC)
  lb_flag |= MLX5_TIRC_SELF_LB_BLOCK_BLOCK_UNICAST;

 if (*qp_flags_en & MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC)
  lb_flag |= MLX5_TIRC_SELF_LB_BLOCK_BLOCK_MULTICAST;

 if (dev->is_rep) {
  lb_flag |= MLX5_TIRC_SELF_LB_BLOCK_BLOCK_UNICAST;
  *qp_flags_en |= MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC;
 }

 MLX5_SET(tirc, tirc, self_lb_block, lb_flag);

 err = mlx5_core_create_tir_out(dev->mdev, in, inlen, out, outlen);

 rq->tirn = MLX5_GET(create_tir_out, out, tirn);
 if (!err && MLX5_GET(tirc, tirc, self_lb_block)) {
  err = mlx5_ib_enable_lb(dev, 0, 1);

  if (err)
   destroy_raw_packet_qp_tir(dev, rq, 0, pd);
 }
 kvfree(in);

 return err;
}

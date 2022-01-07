
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ah_attr {int dummy; } ;
struct mlx4_ib_dev {int dev; int sm_lock; int * sm_ah; } ;
struct mlx4_ib_demux_ctx {int port; struct mlx4_ib_dev* dev; } ;
struct ib_mad {int dummy; } ;


 int EAGAIN ;
 int IB_QP1_QKEY ;
 int IB_QPT_GSI ;
 int mlx4_ib_query_ah (int ,struct rdma_ah_attr*) ;
 int mlx4_ib_send_to_wire (struct mlx4_ib_dev*,int ,int,int ,int ,int,int ,struct rdma_ah_attr*,int *,int,struct ib_mad*) ;
 int mlx4_master_func_num (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int send_mad_to_wire(struct mlx4_ib_demux_ctx *ctx, struct ib_mad *mad)
{
 struct mlx4_ib_dev *dev = ctx->dev;
 struct rdma_ah_attr ah_attr;
 unsigned long flags;

 spin_lock_irqsave(&dev->sm_lock, flags);
 if (!dev->sm_ah[ctx->port - 1]) {

  spin_unlock_irqrestore(&dev->sm_lock, flags);
  return -EAGAIN;
 }
 mlx4_ib_query_ah(dev->sm_ah[ctx->port - 1], &ah_attr);
 spin_unlock_irqrestore(&dev->sm_lock, flags);
 return mlx4_ib_send_to_wire(dev, mlx4_master_func_num(dev->dev),
        ctx->port, IB_QPT_GSI, 0, 1, IB_QP1_QKEY,
        &ah_attr, ((void*)0), 0xffff, mad);
}

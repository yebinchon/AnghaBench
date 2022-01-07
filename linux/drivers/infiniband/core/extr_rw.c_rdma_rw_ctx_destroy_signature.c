
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct rdma_rw_ctx {scalar_t__ type; TYPE_2__* reg; } ;
struct ib_qp {TYPE_1__* pd; int sig_mrs; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int mr; } ;
struct TYPE_3__ {int device; } ;


 scalar_t__ RDMA_RW_SIG_MR ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ib_dma_unmap_sg (int ,struct scatterlist*,scalar_t__,int) ;
 int ib_mr_pool_put (struct ib_qp*,int *,int ) ;
 int kfree (TYPE_2__*) ;

void rdma_rw_ctx_destroy_signature(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
  u8 port_num, struct scatterlist *sg, u32 sg_cnt,
  struct scatterlist *prot_sg, u32 prot_sg_cnt,
  enum dma_data_direction dir)
{
 if (WARN_ON_ONCE(ctx->type != RDMA_RW_SIG_MR))
  return;

 ib_mr_pool_put(qp, &qp->sig_mrs, ctx->reg->mr);
 kfree(ctx->reg);

 ib_dma_unmap_sg(qp->pd->device, sg, sg_cnt, dir);
 if (prot_sg_cnt)
  ib_dma_unmap_sg(qp->pd->device, prot_sg, prot_sg_cnt, dir);
}

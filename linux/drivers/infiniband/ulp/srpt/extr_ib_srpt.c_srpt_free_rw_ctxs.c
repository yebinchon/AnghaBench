
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srpt_rw_ctx {int nents; int sg; int rw; } ;
struct srpt_send_ioctx {int n_rw_ctx; struct srpt_rw_ctx* rw_ctxs; struct srpt_rw_ctx s_rw_ctx; int cmd; } ;
struct srpt_rdma_ch {TYPE_1__* sport; int qp; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int port; } ;


 int kfree (struct srpt_rw_ctx*) ;
 int rdma_rw_ctx_destroy (int *,int ,int ,int ,int ,int) ;
 int target_free_sgl (int ,int ) ;
 int target_reverse_dma_direction (int *) ;

__attribute__((used)) static void srpt_free_rw_ctxs(struct srpt_rdma_ch *ch,
        struct srpt_send_ioctx *ioctx)
{
 enum dma_data_direction dir = target_reverse_dma_direction(&ioctx->cmd);
 int i;

 for (i = 0; i < ioctx->n_rw_ctx; i++) {
  struct srpt_rw_ctx *ctx = &ioctx->rw_ctxs[i];

  rdma_rw_ctx_destroy(&ctx->rw, ch->qp, ch->sport->port,
    ctx->sg, ctx->nents, dir);
  target_free_sgl(ctx->sg, ctx->nents);
 }

 if (ioctx->rw_ctxs != &ioctx->s_rw_ctx)
  kfree(ioctx->rw_ctxs);
}

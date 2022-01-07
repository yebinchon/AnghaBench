
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct srpt_rw_ctx {unsigned int nents; struct scatterlist* sg; int rw; } ;
struct srpt_send_ioctx {int n_rw_ctx; int n_rdma; struct srpt_rw_ctx* rw_ctxs; struct srpt_rw_ctx s_rw_ctx; struct srpt_rdma_ch* ch; int cmd; } ;
struct srpt_rdma_ch {TYPE_1__* sport; int qp; } ;
struct srp_direct_buf {int key; int len; int va; } ;
struct scatterlist {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int kfree (struct srpt_rw_ctx*) ;
 struct srpt_rw_ctx* kmalloc_array (int,int,int ) ;
 int rdma_rw_ctx_destroy (int *,int ,int ,struct scatterlist*,unsigned int,int) ;
 int rdma_rw_ctx_init (int *,int ,int ,struct scatterlist*,unsigned int,int ,int ,int ,int) ;
 int sg_chain (struct scatterlist*,unsigned int,struct scatterlist*) ;
 int sg_unmark_end (struct scatterlist*) ;
 int target_alloc_sgl (struct scatterlist**,unsigned int*,int ,int,int) ;
 int target_free_sgl (struct scatterlist*,unsigned int) ;
 int target_reverse_dma_direction (int *) ;

__attribute__((used)) static int srpt_alloc_rw_ctxs(struct srpt_send_ioctx *ioctx,
  struct srp_direct_buf *db, int nbufs, struct scatterlist **sg,
  unsigned *sg_cnt)
{
 enum dma_data_direction dir = target_reverse_dma_direction(&ioctx->cmd);
 struct srpt_rdma_ch *ch = ioctx->ch;
 struct scatterlist *prev = ((void*)0);
 unsigned prev_nents;
 int ret, i;

 if (nbufs == 1) {
  ioctx->rw_ctxs = &ioctx->s_rw_ctx;
 } else {
  ioctx->rw_ctxs = kmalloc_array(nbufs, sizeof(*ioctx->rw_ctxs),
   GFP_KERNEL);
  if (!ioctx->rw_ctxs)
   return -ENOMEM;
 }

 for (i = ioctx->n_rw_ctx; i < nbufs; i++, db++) {
  struct srpt_rw_ctx *ctx = &ioctx->rw_ctxs[i];
  u64 remote_addr = be64_to_cpu(db->va);
  u32 size = be32_to_cpu(db->len);
  u32 rkey = be32_to_cpu(db->key);

  ret = target_alloc_sgl(&ctx->sg, &ctx->nents, size, 0,
    i < nbufs - 1);
  if (ret)
   goto unwind;

  ret = rdma_rw_ctx_init(&ctx->rw, ch->qp, ch->sport->port,
    ctx->sg, ctx->nents, 0, remote_addr, rkey, dir);
  if (ret < 0) {
   target_free_sgl(ctx->sg, ctx->nents);
   goto unwind;
  }

  ioctx->n_rdma += ret;
  ioctx->n_rw_ctx++;

  if (prev) {
   sg_unmark_end(&prev[prev_nents - 1]);
   sg_chain(prev, prev_nents + 1, ctx->sg);
  } else {
   *sg = ctx->sg;
  }

  prev = ctx->sg;
  prev_nents = ctx->nents;

  *sg_cnt += ctx->nents;
 }

 return 0;

unwind:
 while (--i >= 0) {
  struct srpt_rw_ctx *ctx = &ioctx->rw_ctxs[i];

  rdma_rw_ctx_destroy(&ctx->rw, ch->qp, ch->sport->port,
    ctx->sg, ctx->nents, dir);
  target_free_sgl(ctx->sg, ctx->nents);
 }
 if (ioctx->rw_ctxs != &ioctx->s_rw_ctx)
  kfree(ioctx->rw_ctxs);
 return ret;
}

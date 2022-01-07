
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {int error; size_t digcnt; size_t total; int sg; int sg_len; } ;
struct s5p_aes_dev {unsigned int hash_sg_cnt; int hash_sg_iter; int hash_flags; int dev; int hash_req; } ;


 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int EINVAL ;
 int HASH_FLAGS_DMA_ACTIVE ;
 int HASH_FLAGS_FINAL ;
 struct s5p_hash_reqctx* ahash_request_ctx (int ) ;
 int dev_err (int ,char*) ;
 unsigned int dma_map_sg (int ,int ,int ,int ) ;
 int s5p_hash_write_ctrl (struct s5p_aes_dev*,size_t,int) ;
 int s5p_set_dma_hashdata (struct s5p_aes_dev*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int s5p_hash_xmit_dma(struct s5p_aes_dev *dd, size_t length,
        bool final)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(dd->hash_req);
 unsigned int cnt;

 cnt = dma_map_sg(dd->dev, ctx->sg, ctx->sg_len, DMA_TO_DEVICE);
 if (!cnt) {
  dev_err(dd->dev, "dma_map_sg error\n");
  ctx->error = 1;
  return -EINVAL;
 }

 set_bit(HASH_FLAGS_DMA_ACTIVE, &dd->hash_flags);
 dd->hash_sg_iter = ctx->sg;
 dd->hash_sg_cnt = cnt;
 s5p_hash_write_ctrl(dd, length, final);
 ctx->digcnt += length;
 ctx->total -= length;


 if (final)
  set_bit(HASH_FLAGS_FINAL, &dd->hash_flags);

 s5p_set_dma_hashdata(dd, dd->hash_sg_iter);

 return -EINPROGRESS;
}

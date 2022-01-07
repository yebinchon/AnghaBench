
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {int sg_len; int sg; } ;
struct s5p_aes_dev {int hash_flags; int dev; int hash_req; } ;


 int DMA_TO_DEVICE ;
 int HASH_FLAGS_DMA_ACTIVE ;
 struct s5p_hash_reqctx* ahash_request_ctx (int ) ;
 int clear_bit (int ,int *) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;

__attribute__((used)) static void s5p_hash_update_dma_stop(struct s5p_aes_dev *dd)
{
 const struct s5p_hash_reqctx *ctx = ahash_request_ctx(dd->hash_req);

 dma_unmap_sg(dd->dev, ctx->sg, ctx->sg_len, DMA_TO_DEVICE);
 clear_bit(HASH_FLAGS_DMA_ACTIVE, &dd->hash_flags);
}

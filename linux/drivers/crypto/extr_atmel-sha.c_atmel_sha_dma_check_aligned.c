
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {size_t offset; size_t length; } ;
struct atmel_sha_reqctx {size_t block_size; } ;
struct atmel_sha_dma {int nents; size_t last_sg_length; } ;
struct atmel_sha_dev {struct ahash_request* req; struct atmel_sha_dma dma_lch_in; } ;
struct ahash_request {int dummy; } ;


 size_t ALIGN (size_t,int) ;
 int IS_ALIGNED (size_t,size_t) ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static bool atmel_sha_dma_check_aligned(struct atmel_sha_dev *dd,
     struct scatterlist *sg,
     size_t len)
{
 struct atmel_sha_dma *dma = &dd->dma_lch_in;
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 size_t bs = ctx->block_size;
 int nents;

 for (nents = 0; sg; sg = sg_next(sg), ++nents) {
  if (!IS_ALIGNED(sg->offset, sizeof(u32)))
   return 0;





  if (len <= sg->length) {
   dma->nents = nents + 1;
   dma->last_sg_length = sg->length;
   sg->length = ALIGN(len, sizeof(u32));
   return 1;
  }


  if (!IS_ALIGNED(sg->length, bs))
   return 0;

  len -= sg->length;
 }

 return 0;
}

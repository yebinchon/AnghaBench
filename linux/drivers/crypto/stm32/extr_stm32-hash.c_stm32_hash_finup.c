
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_request_ctx {int flags; } ;
struct stm32_hash_dev {scalar_t__ dma_lch; } ;
struct stm32_hash_ctx {int dummy; } ;
struct ahash_request {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int HASH_FLAGS_CPU ;
 int HASH_FLAGS_FINUP ;
 struct stm32_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct stm32_hash_ctx* crypto_ahash_ctx (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 scalar_t__ stm32_hash_dma_aligned_data (struct ahash_request*) ;
 int stm32_hash_final (struct ahash_request*) ;
 struct stm32_hash_dev* stm32_hash_find_dev (struct stm32_hash_ctx*) ;
 int stm32_hash_update (struct ahash_request*) ;

__attribute__((used)) static int stm32_hash_finup(struct ahash_request *req)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(req);
 struct stm32_hash_ctx *ctx = crypto_ahash_ctx(crypto_ahash_reqtfm(req));
 struct stm32_hash_dev *hdev = stm32_hash_find_dev(ctx);
 int err1, err2;

 rctx->flags |= HASH_FLAGS_FINUP;

 if (hdev->dma_lch && stm32_hash_dma_aligned_data(req))
  rctx->flags &= ~HASH_FLAGS_CPU;

 err1 = stm32_hash_update(req);

 if (err1 == -EINPROGRESS || err1 == -EBUSY)
  return err1;





 err2 = stm32_hash_final(req);

 return err1 ?: err2;
}

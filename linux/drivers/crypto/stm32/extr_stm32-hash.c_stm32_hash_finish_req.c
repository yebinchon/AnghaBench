
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_request_ctx {int flags; struct stm32_hash_dev* hdev; } ;
struct stm32_hash_dev {int flags; int engine; int dev; } ;
struct ahash_request {int dummy; } ;


 int HASH_FLAGS_CPU ;
 int HASH_FLAGS_DMA_READY ;
 int HASH_FLAGS_ERRORS ;
 int HASH_FLAGS_FINAL ;
 int HASH_FLAGS_HMAC ;
 int HASH_FLAGS_HMAC_FINAL ;
 int HASH_FLAGS_HMAC_INIT ;
 int HASH_FLAGS_HMAC_KEY ;
 int HASH_FLAGS_INIT ;
 int HASH_FLAGS_OUTPUT_READY ;
 struct stm32_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int crypto_finalize_hash_request (int ,struct ahash_request*,int) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int stm32_hash_copy_hash (struct ahash_request*) ;
 int stm32_hash_finish (struct ahash_request*) ;

__attribute__((used)) static void stm32_hash_finish_req(struct ahash_request *req, int err)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(req);
 struct stm32_hash_dev *hdev = rctx->hdev;

 if (!err && (HASH_FLAGS_FINAL & hdev->flags)) {
  stm32_hash_copy_hash(req);
  err = stm32_hash_finish(req);
  hdev->flags &= ~(HASH_FLAGS_FINAL | HASH_FLAGS_CPU |
     HASH_FLAGS_INIT | HASH_FLAGS_DMA_READY |
     HASH_FLAGS_OUTPUT_READY | HASH_FLAGS_HMAC |
     HASH_FLAGS_HMAC_INIT | HASH_FLAGS_HMAC_FINAL |
     HASH_FLAGS_HMAC_KEY);
 } else {
  rctx->flags |= HASH_FLAGS_ERRORS;
 }

 pm_runtime_mark_last_busy(hdev->dev);
 pm_runtime_put_autosuspend(hdev->dev);

 crypto_finalize_hash_request(hdev->engine, req, err);
}

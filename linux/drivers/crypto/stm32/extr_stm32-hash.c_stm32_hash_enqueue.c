
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_hash_request_ctx {unsigned int op; } ;
struct stm32_hash_dev {int dummy; } ;
struct stm32_hash_ctx {struct stm32_hash_dev* hdev; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct stm32_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct stm32_hash_ctx* crypto_tfm_ctx (int ) ;
 int stm32_hash_handle_queue (struct stm32_hash_dev*,struct ahash_request*) ;

__attribute__((used)) static int stm32_hash_enqueue(struct ahash_request *req, unsigned int op)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(req);
 struct stm32_hash_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 struct stm32_hash_dev *hdev = ctx->hdev;

 rctx->op = op;

 return stm32_hash_handle_queue(hdev, req);
}

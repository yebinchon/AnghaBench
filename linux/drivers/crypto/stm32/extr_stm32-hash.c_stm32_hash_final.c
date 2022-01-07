
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_request_ctx {int flags; } ;
struct ahash_request {int dummy; } ;


 int HASH_FLAGS_FINUP ;
 int HASH_OP_FINAL ;
 struct stm32_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int stm32_hash_enqueue (struct ahash_request*,int ) ;

__attribute__((used)) static int stm32_hash_final(struct ahash_request *req)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(req);

 rctx->flags |= HASH_FLAGS_FINUP;

 return stm32_hash_enqueue(req, HASH_OP_FINAL);
}

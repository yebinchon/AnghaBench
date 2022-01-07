
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_request_ctx {int digcnt; int digest; } ;
struct ahash_request {int result; } ;


 int EINVAL ;
 struct stm32_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int stm32_hash_finish(struct ahash_request *req)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(req);

 if (!req->result)
  return -EINVAL;

 memcpy(req->result, rctx->digest, rctx->digcnt);

 return 0;
}

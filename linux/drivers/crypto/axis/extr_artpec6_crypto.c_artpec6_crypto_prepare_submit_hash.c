
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dma; } ;
struct artpec6_hash_request_context {TYPE_1__ common; } ;
struct ahash_request {int base; } ;




 struct artpec6_hash_request_context* ahash_request_ctx (struct ahash_request*) ;
 int artpec6_crypto_common_destroy (TYPE_1__*) ;
 int artpec6_crypto_common_init (TYPE_1__*,int *,int ,int *,int ) ;
 int artpec6_crypto_complete_hash ;
 int artpec6_crypto_prepare_hash (struct ahash_request*) ;
 int artpec6_crypto_submit (TYPE_1__*) ;

__attribute__((used)) static int artpec6_crypto_prepare_submit_hash(struct ahash_request *req)
{
 struct artpec6_hash_request_context *req_ctx = ahash_request_ctx(req);
 int ret;

 if (!req_ctx->common.dma) {
  ret = artpec6_crypto_common_init(&req_ctx->common,
       &req->base,
       artpec6_crypto_complete_hash,
       ((void*)0), 0);

  if (ret)
   return ret;
 }

 ret = artpec6_crypto_prepare_hash(req);
 switch (ret) {
 case 128:
  ret = artpec6_crypto_submit(&req_ctx->common);
  break;

 case 129:
  ret = 0;


 default:
  artpec6_crypto_common_destroy(&req_ctx->common);
  break;
 }

 return ret;
}

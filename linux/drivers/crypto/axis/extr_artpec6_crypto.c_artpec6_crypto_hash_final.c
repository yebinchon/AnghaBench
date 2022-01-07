
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_hash_request_context {int hash_flags; } ;
struct ahash_request {int dummy; } ;


 int HASH_FLAG_FINALIZE ;
 struct artpec6_hash_request_context* ahash_request_ctx (struct ahash_request*) ;
 int artpec6_crypto_prepare_submit_hash (struct ahash_request*) ;

__attribute__((used)) static int artpec6_crypto_hash_final(struct ahash_request *req)
{
 struct artpec6_hash_request_context *req_ctx = ahash_request_ctx(req);

 req_ctx->hash_flags |= HASH_FLAG_FINALIZE;

 return artpec6_crypto_prepare_submit_hash(req);
}

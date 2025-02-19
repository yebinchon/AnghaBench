
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_hash_request_context {int hash_flags; } ;
struct ahash_request {int dummy; } ;


 int ARTPEC6_CRYPTO_HASH_SHA256 ;
 int HASH_FLAG_FINALIZE ;
 int HASH_FLAG_UPDATE ;
 struct artpec6_hash_request_context* ahash_request_ctx (struct ahash_request*) ;
 int artpec6_crypto_init_hash (struct ahash_request*,int ,int ) ;
 int artpec6_crypto_prepare_submit_hash (struct ahash_request*) ;

__attribute__((used)) static int artpec6_crypto_sha256_digest(struct ahash_request *req)
{
 struct artpec6_hash_request_context *req_ctx = ahash_request_ctx(req);

 artpec6_crypto_init_hash(req, ARTPEC6_CRYPTO_HASH_SHA256, 0);
 req_ctx->hash_flags |= HASH_FLAG_UPDATE | HASH_FLAG_FINALIZE;

 return artpec6_crypto_prepare_submit_hash(req);
}

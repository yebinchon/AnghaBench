
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixp_ctx {int * nonce; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int * info; } ;
typedef int __be32 ;


 int CTR_RFC3686_BLOCK_SIZE ;
 int CTR_RFC3686_IV_SIZE ;
 int CTR_RFC3686_NONCE_SIZE ;
 int ablk_perform (struct ablkcipher_request*,int) ;
 int cpu_to_be32 (int) ;
 struct ixp_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int ablk_rfc3686_crypt(struct ablkcipher_request *req)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct ixp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 u8 iv[CTR_RFC3686_BLOCK_SIZE];
 u8 *info = req->info;
 int ret;


        memcpy(iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
 memcpy(iv + CTR_RFC3686_NONCE_SIZE, info, CTR_RFC3686_IV_SIZE);


 *(__be32 *)(iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
  cpu_to_be32(1);

 req->info = iv;
 ret = ablk_perform(req, 1);
 req->info = info;
 return ret;
}

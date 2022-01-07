
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct cpl_fw6_pld {int * data; } ;
struct chcr_blkcipher_req_ctx {int processed; scalar_t__ op; scalar_t__ iv; } ;
struct ablkcipher_request {int * info; } ;
typedef int __be32 ;


 int AES_BLOCK_SIZE ;
 int CRYPTO_ALG_SUB_TYPE_CBC ;
 int CRYPTO_ALG_SUB_TYPE_CTR ;
 int CRYPTO_ALG_SUB_TYPE_CTR_RFC3686 ;
 int CRYPTO_ALG_SUB_TYPE_XTS ;
 scalar_t__ CTR_RFC3686_IV_SIZE ;
 scalar_t__ CTR_RFC3686_NONCE_SIZE ;
 struct chcr_blkcipher_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int chcr_update_tweak (struct ablkcipher_request*,int *,int ) ;
 int cpu_to_be32 (int) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 int ctr_add_iv (int *,int *,int) ;
 int get_cryptoalg_subtype (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int chcr_update_cipher_iv(struct ablkcipher_request *req,
       struct cpl_fw6_pld *fw6_pld, u8 *iv)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
 int subtype = get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm));
 int ret = 0;

 if (subtype == CRYPTO_ALG_SUB_TYPE_CTR)
  ctr_add_iv(iv, req->info, (reqctx->processed /
      AES_BLOCK_SIZE));
 else if (subtype == CRYPTO_ALG_SUB_TYPE_CTR_RFC3686)
  *(__be32 *)(reqctx->iv + CTR_RFC3686_NONCE_SIZE +
   CTR_RFC3686_IV_SIZE) = cpu_to_be32((reqctx->processed /
      AES_BLOCK_SIZE) + 1);
 else if (subtype == CRYPTO_ALG_SUB_TYPE_XTS)
  ret = chcr_update_tweak(req, iv, 0);
 else if (subtype == CRYPTO_ALG_SUB_TYPE_CBC) {
  if (reqctx->op)

   memcpy(iv, req->info, AES_BLOCK_SIZE);
  else
   memcpy(iv, &fw6_pld->data[2], AES_BLOCK_SIZE);
 }

 return ret;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct qce_sha_ctx {int * authkey; } ;
struct crypto_wait {int dummy; } ;
struct crypto_ahash {int base; } ;
struct ahash_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int PTR_ERR (struct crypto_ahash*) ;
 scalar_t__ QCE_MAX_ALIGN_SIZE ;
 unsigned int SHA1_DIGEST_SIZE ;
 unsigned int SHA256_DIGEST_SIZE ;
 struct ahash_request* ahash_request_alloc (struct crypto_ahash*,int ) ;
 int ahash_request_free (struct ahash_request*) ;
 int ahash_request_set_callback (struct ahash_request*,int ,int ,struct crypto_wait*) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,unsigned int) ;
 int crypto_ahash_clear_flags (struct crypto_ahash*,int ) ;
 int crypto_ahash_digest (struct ahash_request*) ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int ) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_alloc_ahash (char const*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int crypto_init_wait (struct crypto_wait*) ;
 int crypto_req_done ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 struct qce_sha_ctx* crypto_tfm_ctx (int *) ;
 int crypto_wait_req (int ,struct crypto_wait*) ;
 int kfree (int *) ;
 int * kzalloc (scalar_t__,int ) ;
 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,int) ;
 int sg_init_one (struct scatterlist*,int *,unsigned int) ;

__attribute__((used)) static int qce_ahash_hmac_setkey(struct crypto_ahash *tfm, const u8 *key,
     unsigned int keylen)
{
 unsigned int digestsize = crypto_ahash_digestsize(tfm);
 struct qce_sha_ctx *ctx = crypto_tfm_ctx(&tfm->base);
 struct crypto_wait wait;
 struct ahash_request *req;
 struct scatterlist sg;
 unsigned int blocksize;
 struct crypto_ahash *ahash_tfm;
 u8 *buf;
 int ret;
 const char *alg_name;

 blocksize = crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));
 memset(ctx->authkey, 0, sizeof(ctx->authkey));

 if (keylen <= blocksize) {
  memcpy(ctx->authkey, key, keylen);
  return 0;
 }

 if (digestsize == SHA1_DIGEST_SIZE)
  alg_name = "sha1-qce";
 else if (digestsize == SHA256_DIGEST_SIZE)
  alg_name = "sha256-qce";
 else
  return -EINVAL;

 ahash_tfm = crypto_alloc_ahash(alg_name, 0, 0);
 if (IS_ERR(ahash_tfm))
  return PTR_ERR(ahash_tfm);

 req = ahash_request_alloc(ahash_tfm, GFP_KERNEL);
 if (!req) {
  ret = -ENOMEM;
  goto err_free_ahash;
 }

 crypto_init_wait(&wait);
 ahash_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
       crypto_req_done, &wait);
 crypto_ahash_clear_flags(ahash_tfm, ~0);

 buf = kzalloc(keylen + QCE_MAX_ALIGN_SIZE, GFP_KERNEL);
 if (!buf) {
  ret = -ENOMEM;
  goto err_free_req;
 }

 memcpy(buf, key, keylen);
 sg_init_one(&sg, buf, keylen);
 ahash_request_set_crypt(req, &sg, ctx->authkey, keylen);

 ret = crypto_wait_req(crypto_ahash_digest(req), &wait);
 if (ret)
  crypto_ahash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);

 kfree(buf);
err_free_req:
 ahash_request_free(req);
err_free_ahash:
 crypto_free_ahash(ahash_tfm);
 return ret;
}

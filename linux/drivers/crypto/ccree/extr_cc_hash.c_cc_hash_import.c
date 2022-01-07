
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hash_ctx {int inter_digestsize; int hash_len; int drvdata; } ;
struct ahash_request {int dummy; } ;
struct ahash_req_ctx {int* digest_buff; int* digest_bytes_len; int* buf_cnt; int** buffers; } ;


 int CC_EXPORT_MAGIC ;
 int CC_MAX_HASH_BLCK_SIZE ;
 int EINVAL ;
 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cc_init_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 struct device* drvdata_to_dev (int ) ;
 int memcpy (int*,void const*,int) ;

__attribute__((used)) static int cc_hash_import(struct ahash_request *req, const void *in)
{
 struct crypto_ahash *ahash = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(ahash);
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 u32 tmp;

 memcpy(&tmp, in, sizeof(u32));
 if (tmp != CC_EXPORT_MAGIC)
  return -EINVAL;
 in += sizeof(u32);

 cc_init_req(dev, state, ctx);

 memcpy(state->digest_buff, in, ctx->inter_digestsize);
 in += ctx->inter_digestsize;

 memcpy(state->digest_bytes_len, in, ctx->hash_len);
 in += ctx->hash_len;


 memcpy(&tmp, in, sizeof(u32));
 if (tmp > CC_MAX_HASH_BLCK_SIZE)
  return -EINVAL;
 in += sizeof(u32);

 state->buf_cnt[0] = tmp;
 memcpy(state->buffers[0], in, tmp);

 return 0;
}

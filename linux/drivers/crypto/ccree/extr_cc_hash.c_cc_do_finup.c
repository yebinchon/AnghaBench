
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int is_hmac; int drvdata; int hash_len; int hash_mode; int hw_mode; } ;
struct cc_crypto_req {struct ahash_request* user_arg; int user_cb; } ;
struct ahash_request {unsigned int nbytes; int base; int * result; struct scatterlist* src; } ;
struct ahash_req_ctx {int digest_bytes_len_dma_addr; } ;
typedef int gfp_t ;


 int CC_MAX_HASH_SEQ_LEN ;
 int DO_PAD ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int NS_BIT ;
 int SETUP_WRITE_STATE1 ;
 int S_HASH_to_DOUT ;
 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 unsigned int cc_fin_hmac (struct cc_hw_desc*,struct ahash_request*,unsigned int) ;
 unsigned int cc_fin_result (struct cc_hw_desc*,struct ahash_request*,unsigned int) ;
 int cc_gfp_flags (int *) ;
 int cc_hash_complete ;
 scalar_t__ cc_map_hash_request_final (int ,struct ahash_req_ctx*,struct scatterlist*,unsigned int,int,int ) ;
 scalar_t__ cc_map_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 scalar_t__ cc_map_result (struct device*,struct ahash_req_ctx*,int ) ;
 unsigned int cc_restore_hash (struct cc_hw_desc*,struct cc_hash_ctx*,struct ahash_req_ctx*,unsigned int) ;
 int cc_send_request (int ,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int,int *) ;
 int cc_unmap_hash_request (struct device*,struct ahash_req_ctx*,struct scatterlist*,int) ;
 int cc_unmap_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 int cc_unmap_result (struct device*,struct ahash_req_ctx*,int ,int *) ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dev_dbg (struct device*,char*,char*,char*,unsigned int) ;
 int dev_err (struct device*,char*,...) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_do (struct cc_hw_desc*,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_hash_cipher_mode (struct cc_hw_desc*,int ,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static int cc_do_finup(struct ahash_request *req, bool update)
{
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 u32 digestsize = crypto_ahash_digestsize(tfm);
 struct scatterlist *src = req->src;
 unsigned int nbytes = req->nbytes;
 u8 *result = req->result;
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 bool is_hmac = ctx->is_hmac;
 struct cc_crypto_req cc_req = {};
 struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
 unsigned int idx = 0;
 int rc;
 gfp_t flags = cc_gfp_flags(&req->base);

 dev_dbg(dev, "===== %s-%s (%d) ====\n", is_hmac ? "hmac" : "hash",
  update ? "finup" : "final", nbytes);

 if (cc_map_req(dev, state, ctx)) {
  dev_err(dev, "map_ahash_source() failed\n");
  return -EINVAL;
 }

 if (cc_map_hash_request_final(ctx->drvdata, state, src, nbytes, update,
          flags)) {
  dev_err(dev, "map_ahash_request_final() failed\n");
  cc_unmap_req(dev, state, ctx);
  return -ENOMEM;
 }
 if (cc_map_result(dev, state, digestsize)) {
  dev_err(dev, "map_ahash_digest() failed\n");
  cc_unmap_hash_request(dev, state, src, 1);
  cc_unmap_req(dev, state, ctx);
  return -ENOMEM;
 }


 cc_req.user_cb = cc_hash_complete;
 cc_req.user_arg = req;

 idx = cc_restore_hash(desc, ctx, state, idx);


 hw_desc_init(&desc[idx]);
 set_cipher_do(&desc[idx], DO_PAD);
 set_hash_cipher_mode(&desc[idx], ctx->hw_mode, ctx->hash_mode);
 set_dout_dlli(&desc[idx], state->digest_bytes_len_dma_addr,
        ctx->hash_len, NS_BIT, 0);
 set_setup_mode(&desc[idx], SETUP_WRITE_STATE1);
 set_flow_mode(&desc[idx], S_HASH_to_DOUT);
 idx++;

 if (is_hmac)
  idx = cc_fin_hmac(desc, req, idx);

 idx = cc_fin_result(desc, req, idx);

 rc = cc_send_request(ctx->drvdata, &cc_req, desc, idx, &req->base);
 if (rc != -EINPROGRESS && rc != -EBUSY) {
  dev_err(dev, "send_request() failed (rc=%d)\n", rc);
  cc_unmap_hash_request(dev, state, src, 1);
  cc_unmap_result(dev, state, digestsize, result);
  cc_unmap_req(dev, state, ctx);
 }
 return rc;
}

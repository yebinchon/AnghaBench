
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_ahash {int base; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int drvdata; int hash_len; int hash_mode; int hw_mode; int inter_digestsize; scalar_t__ is_hmac; } ;
struct cc_crypto_req {struct ahash_request* user_arg; int user_cb; } ;
struct ahash_request {unsigned int nbytes; int base; struct scatterlist* src; } ;
struct ahash_req_ctx {int digest_bytes_len_dma_addr; int digest_buff_dma_addr; } ;
typedef int gfp_t ;


 int CC_MAX_HASH_SEQ_LEN ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int NS_BIT ;
 int SETUP_WRITE_STATE0 ;
 int SETUP_WRITE_STATE1 ;
 int S_HASH_to_DOUT ;
 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cc_gfp_flags (int *) ;
 int cc_map_hash_request_update (int ,struct ahash_req_ctx*,struct scatterlist*,unsigned int,unsigned int,int ) ;
 scalar_t__ cc_map_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 size_t cc_restore_hash (struct cc_hw_desc*,struct cc_hash_ctx*,struct ahash_req_ctx*,size_t) ;
 int cc_send_request (int ,struct cc_crypto_req*,struct cc_hw_desc*,size_t,int *) ;
 int cc_unmap_hash_request (struct device*,struct ahash_req_ctx*,struct scatterlist*,int) ;
 int cc_unmap_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 int cc_update_complete ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 unsigned int crypto_tfm_alg_blocksize (int *) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_dout_dlli (struct cc_hw_desc*,int ,int ,int ,int) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_hash_cipher_mode (struct cc_hw_desc*,int ,int ) ;
 int set_queue_last_ind (int ,struct cc_hw_desc*) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static int cc_hash_update(struct ahash_request *req)
{
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 unsigned int block_size = crypto_tfm_alg_blocksize(&tfm->base);
 struct scatterlist *src = req->src;
 unsigned int nbytes = req->nbytes;
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 struct cc_crypto_req cc_req = {};
 struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
 u32 idx = 0;
 int rc;
 gfp_t flags = cc_gfp_flags(&req->base);

 dev_dbg(dev, "===== %s-update (%d) ====\n", ctx->is_hmac ?
  "hmac" : "hash", nbytes);

 if (nbytes == 0) {

  return 0;
 }

 rc = cc_map_hash_request_update(ctx->drvdata, state, src, nbytes,
     block_size, flags);
 if (rc) {
  if (rc == 1) {
   dev_dbg(dev, " data size not require HW update %x\n",
    nbytes);

   return 0;
  }
  dev_err(dev, "map_ahash_request_update() failed\n");
  return -ENOMEM;
 }

 if (cc_map_req(dev, state, ctx)) {
  dev_err(dev, "map_ahash_source() failed\n");
  cc_unmap_hash_request(dev, state, src, 1);
  return -EINVAL;
 }


 cc_req.user_cb = cc_update_complete;
 cc_req.user_arg = req;

 idx = cc_restore_hash(desc, ctx, state, idx);


 hw_desc_init(&desc[idx]);
 set_hash_cipher_mode(&desc[idx], ctx->hw_mode, ctx->hash_mode);
 set_dout_dlli(&desc[idx], state->digest_buff_dma_addr,
        ctx->inter_digestsize, NS_BIT, 0);
 set_flow_mode(&desc[idx], S_HASH_to_DOUT);
 set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
 idx++;


 hw_desc_init(&desc[idx]);
 set_hash_cipher_mode(&desc[idx], ctx->hw_mode, ctx->hash_mode);
 set_dout_dlli(&desc[idx], state->digest_bytes_len_dma_addr,
        ctx->hash_len, NS_BIT, 1);
 set_queue_last_ind(ctx->drvdata, &desc[idx]);
 set_flow_mode(&desc[idx], S_HASH_to_DOUT);
 set_setup_mode(&desc[idx], SETUP_WRITE_STATE1);
 idx++;

 rc = cc_send_request(ctx->drvdata, &cc_req, desc, idx, &req->base);
 if (rc != -EINPROGRESS && rc != -EBUSY) {
  dev_err(dev, "send_request() failed (rc=%d)\n", rc);
  cc_unmap_hash_request(dev, state, src, 1);
  cc_unmap_req(dev, state, ctx);
 }
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct device {int dummy; } ;
struct crypto_ahash {int base; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {scalar_t__ hw_mode; int drvdata; int inter_digestsize; } ;
struct cc_crypto_req {void* user_arg; void* user_cb; } ;
struct ahash_request {int src; int base; int nbytes; } ;
struct ahash_req_ctx {int digest_buff_dma_addr; int xcbc_count; } ;
typedef int gfp_t ;


 int CC_MAX_HASH_SEQ_LEN ;
 int DIN_AES_DOUT ;
 scalar_t__ DRV_CIPHER_XCBC_MAC ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int NS_BIT ;
 int SETUP_WRITE_STATE0 ;
 int S_AES_to_DOUT ;
 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cc_gfp_flags (int *) ;
 int cc_map_hash_request_update (int ,struct ahash_req_ctx*,int ,int ,unsigned int,int ) ;
 scalar_t__ cc_map_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 int cc_send_request (int ,struct cc_crypto_req*,struct cc_hw_desc*,size_t,int *) ;
 int cc_set_desc (struct ahash_req_ctx*,struct cc_hash_ctx*,int ,struct cc_hw_desc*,int,size_t*) ;
 int cc_setup_cmac (struct ahash_request*,struct cc_hw_desc*,size_t*) ;
 int cc_setup_xcbc (struct ahash_request*,struct cc_hw_desc*,size_t*) ;
 int cc_unmap_hash_request (struct device*,struct ahash_req_ctx*,int ,int) ;
 int cc_unmap_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 scalar_t__ cc_update_complete ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 unsigned int crypto_tfm_alg_blocksize (int *) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,...) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_mode (struct cc_hw_desc*,scalar_t__) ;
 int set_dout_dlli (struct cc_hw_desc*,int ,int ,int ,int) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_queue_last_ind (int ,struct cc_hw_desc*) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static int cc_mac_update(struct ahash_request *req)
{
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 unsigned int block_size = crypto_tfm_alg_blocksize(&tfm->base);
 struct cc_crypto_req cc_req = {};
 struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
 int rc;
 u32 idx = 0;
 gfp_t flags = cc_gfp_flags(&req->base);

 if (req->nbytes == 0) {

  return 0;
 }

 state->xcbc_count++;

 rc = cc_map_hash_request_update(ctx->drvdata, state, req->src,
     req->nbytes, block_size, flags);
 if (rc) {
  if (rc == 1) {
   dev_dbg(dev, " data size not require HW update %x\n",
    req->nbytes);

   return 0;
  }
  dev_err(dev, "map_ahash_request_update() failed\n");
  return -ENOMEM;
 }

 if (cc_map_req(dev, state, ctx)) {
  dev_err(dev, "map_ahash_source() failed\n");
  return -EINVAL;
 }

 if (ctx->hw_mode == DRV_CIPHER_XCBC_MAC)
  cc_setup_xcbc(req, desc, &idx);
 else
  cc_setup_cmac(req, desc, &idx);

 cc_set_desc(state, ctx, DIN_AES_DOUT, desc, 1, &idx);


 hw_desc_init(&desc[idx]);
 set_cipher_mode(&desc[idx], ctx->hw_mode);
 set_dout_dlli(&desc[idx], state->digest_buff_dma_addr,
        ctx->inter_digestsize, NS_BIT, 1);
 set_queue_last_ind(ctx->drvdata, &desc[idx]);
 set_flow_mode(&desc[idx], S_AES_to_DOUT);
 set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
 idx++;


 cc_req.user_cb = (void *)cc_update_complete;
 cc_req.user_arg = (void *)req;

 rc = cc_send_request(ctx->drvdata, &cc_req, desc, idx, &req->base);
 if (rc != -EINPROGRESS && rc != -EBUSY) {
  dev_err(dev, "send_request() failed (rc=%d)\n", rc);
  cc_unmap_hash_request(dev, state, req->src, 1);
  cc_unmap_req(dev, state, ctx);
 }
 return rc;
}

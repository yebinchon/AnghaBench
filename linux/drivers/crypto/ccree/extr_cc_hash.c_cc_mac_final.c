
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_2__ {int keylen; } ;
struct cc_hash_ctx {scalar_t__ hw_mode; int drvdata; scalar_t__ opad_tmp_keys_dma_addr; TYPE_1__ key_params; } ;
struct cc_crypto_req {void* user_arg; void* user_cb; } ;
struct ahash_request {int result; int src; int base; int nbytes; } ;
struct ahash_req_ctx {scalar_t__ xcbc_count; scalar_t__ digest_result_dma_addr; scalar_t__ digest_buff_dma_addr; } ;
typedef int gfp_t ;


 scalar_t__ AES_MAX_KEY_SIZE ;
 scalar_t__ CC_AES_128_BIT_KEY_SIZE ;
 scalar_t__ CC_AES_BLOCK_SIZE ;
 int CC_MAX_HASH_SEQ_LEN ;
 int DIN_AES_DOUT ;
 int DMA_DLLI ;
 scalar_t__ DRV_CIPHER_ECB ;
 scalar_t__ DRV_CIPHER_XCBC_MAC ;
 int DRV_CRYPTO_DIRECTION_DECRYPT ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_WRITE_STATE0 ;
 int S_AES_to_DOUT ;
 int S_DIN_to_AES ;
 scalar_t__ XCBC_MAC_K1_OFFSET ;
 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cc_gfp_flags (int *) ;
 scalar_t__* cc_hash_buf_cnt (struct ahash_req_ctx*) ;
 scalar_t__ cc_hash_complete ;
 scalar_t__ cc_map_hash_request_final (int ,struct ahash_req_ctx*,int ,int ,int ,int ) ;
 scalar_t__ cc_map_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 scalar_t__ cc_map_result (struct device*,struct ahash_req_ctx*,scalar_t__) ;
 int cc_send_request (int ,struct cc_crypto_req*,struct cc_hw_desc*,int,int *) ;
 int cc_set_desc (struct ahash_req_ctx*,struct cc_hash_ctx*,int ,struct cc_hw_desc*,int,int*) ;
 int cc_setup_cmac (struct ahash_request*,struct cc_hw_desc*,int*) ;
 int cc_setup_xcbc (struct ahash_request*,struct cc_hw_desc*,int*) ;
 int cc_unmap_hash_request (struct device*,struct ahash_req_ctx*,int ,int) ;
 int cc_unmap_req (struct device*,struct ahash_req_ctx*,struct cc_hash_ctx*) ;
 int cc_unmap_result (struct device*,struct ahash_req_ctx*,scalar_t__,int ) ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 scalar_t__ crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dev_dbg (struct device*,char*,scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config0 (struct cc_hw_desc*,int ) ;
 int set_cipher_mode (struct cc_hw_desc*,scalar_t__) ;
 int set_cmac_size0_mode (struct cc_hw_desc*) ;
 int set_din_const (struct cc_hw_desc*,int,scalar_t__) ;
 int set_din_no_dma (struct cc_hw_desc*,int ,int) ;
 int set_din_type (struct cc_hw_desc*,int ,scalar_t__,scalar_t__,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,scalar_t__,scalar_t__,int ,int) ;
 int set_dout_no_dma (struct cc_hw_desc*,int ,int ,int) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_key_size_aes (struct cc_hw_desc*,scalar_t__) ;
 int set_queue_last_ind (int ,struct cc_hw_desc*) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static int cc_mac_final(struct ahash_request *req)
{
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 struct cc_crypto_req cc_req = {};
 struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
 int idx = 0;
 int rc = 0;
 u32 key_size, key_len;
 u32 digestsize = crypto_ahash_digestsize(tfm);
 gfp_t flags = cc_gfp_flags(&req->base);
 u32 rem_cnt = *cc_hash_buf_cnt(state);

 if (ctx->hw_mode == DRV_CIPHER_XCBC_MAC) {
  key_size = CC_AES_128_BIT_KEY_SIZE;
  key_len = CC_AES_128_BIT_KEY_SIZE;
 } else {
  key_size = (ctx->key_params.keylen == 24) ? AES_MAX_KEY_SIZE :
   ctx->key_params.keylen;
  key_len = ctx->key_params.keylen;
 }

 dev_dbg(dev, "===== final  xcbc reminder (%d) ====\n", rem_cnt);

 if (cc_map_req(dev, state, ctx)) {
  dev_err(dev, "map_ahash_source() failed\n");
  return -EINVAL;
 }

 if (cc_map_hash_request_final(ctx->drvdata, state, req->src,
          req->nbytes, 0, flags)) {
  dev_err(dev, "map_ahash_request_final() failed\n");
  cc_unmap_req(dev, state, ctx);
  return -ENOMEM;
 }

 if (cc_map_result(dev, state, digestsize)) {
  dev_err(dev, "map_ahash_digest() failed\n");
  cc_unmap_hash_request(dev, state, req->src, 1);
  cc_unmap_req(dev, state, ctx);
  return -ENOMEM;
 }


 cc_req.user_cb = (void *)cc_hash_complete;
 cc_req.user_arg = (void *)req;

 if (state->xcbc_count && rem_cnt == 0) {

  hw_desc_init(&desc[idx]);
  set_cipher_mode(&desc[idx], DRV_CIPHER_ECB);
  set_cipher_config0(&desc[idx], DRV_CRYPTO_DIRECTION_DECRYPT);
  set_din_type(&desc[idx], DMA_DLLI,
        (ctx->opad_tmp_keys_dma_addr + XCBC_MAC_K1_OFFSET),
        key_size, NS_BIT);
  set_key_size_aes(&desc[idx], key_len);
  set_flow_mode(&desc[idx], S_DIN_to_AES);
  set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
  idx++;




  hw_desc_init(&desc[idx]);
  set_din_type(&desc[idx], DMA_DLLI, state->digest_buff_dma_addr,
        CC_AES_BLOCK_SIZE, NS_BIT);
  set_dout_dlli(&desc[idx], state->digest_buff_dma_addr,
         CC_AES_BLOCK_SIZE, NS_BIT, 0);
  set_flow_mode(&desc[idx], DIN_AES_DOUT);
  idx++;


  hw_desc_init(&desc[idx]);
  set_din_no_dma(&desc[idx], 0, 0xfffff0);
  set_dout_no_dma(&desc[idx], 0, 0, 1);
  idx++;
 }

 if (ctx->hw_mode == DRV_CIPHER_XCBC_MAC)
  cc_setup_xcbc(req, desc, &idx);
 else
  cc_setup_cmac(req, desc, &idx);

 if (state->xcbc_count == 0) {
  hw_desc_init(&desc[idx]);
  set_cipher_mode(&desc[idx], ctx->hw_mode);
  set_key_size_aes(&desc[idx], key_len);
  set_cmac_size0_mode(&desc[idx]);
  set_flow_mode(&desc[idx], S_DIN_to_AES);
  idx++;
 } else if (rem_cnt > 0) {
  cc_set_desc(state, ctx, DIN_AES_DOUT, desc, 0, &idx);
 } else {
  hw_desc_init(&desc[idx]);
  set_din_const(&desc[idx], 0x00, CC_AES_BLOCK_SIZE);
  set_flow_mode(&desc[idx], DIN_AES_DOUT);
  idx++;
 }


 hw_desc_init(&desc[idx]);

 set_dout_dlli(&desc[idx], state->digest_result_dma_addr,
        digestsize, NS_BIT, 1);
 set_queue_last_ind(ctx->drvdata, &desc[idx]);
 set_flow_mode(&desc[idx], S_AES_to_DOUT);
 set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
 set_cipher_mode(&desc[idx], ctx->hw_mode);
 idx++;

 rc = cc_send_request(ctx->drvdata, &cc_req, desc, idx, &req->base);
 if (rc != -EINPROGRESS && rc != -EBUSY) {
  dev_err(dev, "send_request() failed (rc=%d)\n", rc);
  cc_unmap_hash_request(dev, state, req->src, 1);
  cc_unmap_result(dev, state, digestsize, req->result);
  cc_unmap_req(dev, state, ctx);
 }
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct crypto_ahash {int base; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; int * key; scalar_t__ key_dma_addr; } ;
struct cc_hash_ctx {int is_hmac; int inter_digestsize; int hash_len; TYPE_1__ key_params; int drvdata; scalar_t__ digest_buff_dma_addr; scalar_t__ opad_tmp_keys_dma_addr; int hw_mode; int hash_mode; } ;
struct cc_crypto_req {int dummy; } ;
typedef int cc_sram_addr_t ;


 int BYPASS ;
 int CC_MAX_HASH_SEQ_LEN ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int DIN_HASH ;
 int DMA_DLLI ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HASH_PADDING_DISABLED ;
 int HASH_PADDING_ENABLED ;
 unsigned int HMAC_IPAD_CONST ;
 unsigned int HMAC_OPAD_CONST ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_LOAD_STATE0 ;
 int SETUP_LOAD_STATE1 ;
 int SETUP_WRITE_STATE0 ;
 int S_DIN_to_HASH ;
 int S_HASH_to_DOUT ;
 int cc_larval_digest_addr (int ,int ) ;
 int cc_send_sync_request (int ,struct cc_crypto_req*,struct cc_hw_desc*,int) ;
 int cc_set_endianity (int ,struct cc_hw_desc*) ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int ) ;
 int crypto_tfm_alg_blocksize (int *) ;
 int dev_dbg (struct device*,char*,unsigned int,...) ;
 int dev_err (struct device*,char*,int,...) ;
 scalar_t__ dma_map_single (struct device*,void*,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_single (struct device*,scalar_t__,unsigned int,int ) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int * kmemdup (int const*,unsigned int,int ) ;
 int kzfree (int *) ;
 int set_cipher_config1 (struct cc_hw_desc*,int ) ;
 int set_cipher_mode (struct cc_hw_desc*,int ) ;
 int set_din_const (struct cc_hw_desc*,int ,int) ;
 int set_din_sram (struct cc_hw_desc*,int ,int) ;
 int set_din_type (struct cc_hw_desc*,int ,scalar_t__,int,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,scalar_t__,int,int ,int ) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;
 int set_xor_active (struct cc_hw_desc*) ;
 int set_xor_val (struct cc_hw_desc*,unsigned int) ;

__attribute__((used)) static int cc_hash_setkey(struct crypto_ahash *ahash, const u8 *key,
     unsigned int keylen)
{
 unsigned int hmac_pad_const[2] = { HMAC_IPAD_CONST, HMAC_OPAD_CONST };
 struct cc_crypto_req cc_req = {};
 struct cc_hash_ctx *ctx = ((void*)0);
 int blocksize = 0;
 int digestsize = 0;
 int i, idx = 0, rc = 0;
 struct cc_hw_desc desc[CC_MAX_HASH_SEQ_LEN];
 cc_sram_addr_t larval_addr;
 struct device *dev;

 ctx = crypto_ahash_ctx(ahash);
 dev = drvdata_to_dev(ctx->drvdata);
 dev_dbg(dev, "start keylen: %d", keylen);

 blocksize = crypto_tfm_alg_blocksize(&ahash->base);
 digestsize = crypto_ahash_digestsize(ahash);

 larval_addr = cc_larval_digest_addr(ctx->drvdata, ctx->hash_mode);




 ctx->key_params.keylen = keylen;
 ctx->key_params.key_dma_addr = 0;
 ctx->is_hmac = 1;
 ctx->key_params.key = ((void*)0);

 if (keylen) {
  ctx->key_params.key = kmemdup(key, keylen, GFP_KERNEL);
  if (!ctx->key_params.key)
   return -ENOMEM;

  ctx->key_params.key_dma_addr =
   dma_map_single(dev, (void *)ctx->key_params.key, keylen,
           DMA_TO_DEVICE);
  if (dma_mapping_error(dev, ctx->key_params.key_dma_addr)) {
   dev_err(dev, "Mapping key va=0x%p len=%u for DMA failed\n",
    ctx->key_params.key, keylen);
   kzfree(ctx->key_params.key);
   return -ENOMEM;
  }
  dev_dbg(dev, "mapping key-buffer: key_dma_addr=%pad keylen=%u\n",
   &ctx->key_params.key_dma_addr, ctx->key_params.keylen);

  if (keylen > blocksize) {

   hw_desc_init(&desc[idx]);
   set_cipher_mode(&desc[idx], ctx->hw_mode);
   set_din_sram(&desc[idx], larval_addr,
         ctx->inter_digestsize);
   set_flow_mode(&desc[idx], S_DIN_to_HASH);
   set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
   idx++;


   hw_desc_init(&desc[idx]);
   set_cipher_mode(&desc[idx], ctx->hw_mode);
   set_din_const(&desc[idx], 0, ctx->hash_len);
   set_cipher_config1(&desc[idx], HASH_PADDING_ENABLED);
   set_flow_mode(&desc[idx], S_DIN_to_HASH);
   set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
   idx++;

   hw_desc_init(&desc[idx]);
   set_din_type(&desc[idx], DMA_DLLI,
         ctx->key_params.key_dma_addr, keylen,
         NS_BIT);
   set_flow_mode(&desc[idx], DIN_HASH);
   idx++;


   hw_desc_init(&desc[idx]);
   set_cipher_mode(&desc[idx], ctx->hw_mode);
   set_dout_dlli(&desc[idx], ctx->opad_tmp_keys_dma_addr,
          digestsize, NS_BIT, 0);
   set_flow_mode(&desc[idx], S_HASH_to_DOUT);
   set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
   set_cipher_config1(&desc[idx], HASH_PADDING_DISABLED);
   cc_set_endianity(ctx->hash_mode, &desc[idx]);
   idx++;

   hw_desc_init(&desc[idx]);
   set_din_const(&desc[idx], 0, (blocksize - digestsize));
   set_flow_mode(&desc[idx], BYPASS);
   set_dout_dlli(&desc[idx],
          (ctx->opad_tmp_keys_dma_addr +
           digestsize),
          (blocksize - digestsize), NS_BIT, 0);
   idx++;
  } else {
   hw_desc_init(&desc[idx]);
   set_din_type(&desc[idx], DMA_DLLI,
         ctx->key_params.key_dma_addr, keylen,
         NS_BIT);
   set_flow_mode(&desc[idx], BYPASS);
   set_dout_dlli(&desc[idx], ctx->opad_tmp_keys_dma_addr,
          keylen, NS_BIT, 0);
   idx++;

   if ((blocksize - keylen)) {
    hw_desc_init(&desc[idx]);
    set_din_const(&desc[idx], 0,
           (blocksize - keylen));
    set_flow_mode(&desc[idx], BYPASS);
    set_dout_dlli(&desc[idx],
           (ctx->opad_tmp_keys_dma_addr +
            keylen), (blocksize - keylen),
           NS_BIT, 0);
    idx++;
   }
  }
 } else {
  hw_desc_init(&desc[idx]);
  set_din_const(&desc[idx], 0, blocksize);
  set_flow_mode(&desc[idx], BYPASS);
  set_dout_dlli(&desc[idx], (ctx->opad_tmp_keys_dma_addr),
         blocksize, NS_BIT, 0);
  idx++;
 }

 rc = cc_send_sync_request(ctx->drvdata, &cc_req, desc, idx);
 if (rc) {
  dev_err(dev, "send_request() failed (rc=%d)\n", rc);
  goto out;
 }


 for (idx = 0, i = 0; i < 2; i++) {

  hw_desc_init(&desc[idx]);
  set_cipher_mode(&desc[idx], ctx->hw_mode);
  set_din_sram(&desc[idx], larval_addr, ctx->inter_digestsize);
  set_flow_mode(&desc[idx], S_DIN_to_HASH);
  set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
  idx++;


  hw_desc_init(&desc[idx]);
  set_cipher_mode(&desc[idx], ctx->hw_mode);
  set_din_const(&desc[idx], 0, ctx->hash_len);
  set_flow_mode(&desc[idx], S_DIN_to_HASH);
  set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
  idx++;


  hw_desc_init(&desc[idx]);
  set_xor_val(&desc[idx], hmac_pad_const[i]);
  set_cipher_mode(&desc[idx], ctx->hw_mode);
  set_flow_mode(&desc[idx], S_DIN_to_HASH);
  set_setup_mode(&desc[idx], SETUP_LOAD_STATE1);
  idx++;


  hw_desc_init(&desc[idx]);
  set_din_type(&desc[idx], DMA_DLLI, ctx->opad_tmp_keys_dma_addr,
        blocksize, NS_BIT);
  set_cipher_mode(&desc[idx], ctx->hw_mode);
  set_xor_active(&desc[idx]);
  set_flow_mode(&desc[idx], DIN_HASH);
  idx++;




  hw_desc_init(&desc[idx]);
  set_cipher_mode(&desc[idx], ctx->hw_mode);
  if (i > 0)
   set_dout_dlli(&desc[idx], ctx->opad_tmp_keys_dma_addr,
          ctx->inter_digestsize, NS_BIT, 0);
  else
   set_dout_dlli(&desc[idx], ctx->digest_buff_dma_addr,
          ctx->inter_digestsize, NS_BIT, 0);
  set_flow_mode(&desc[idx], S_HASH_to_DOUT);
  set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
  idx++;
 }

 rc = cc_send_sync_request(ctx->drvdata, &cc_req, desc, idx);

out:
 if (rc)
  crypto_ahash_set_flags(ahash, CRYPTO_TFM_RES_BAD_KEY_LEN);

 if (ctx->key_params.key_dma_addr) {
  dma_unmap_single(dev, ctx->key_params.key_dma_addr,
     ctx->key_params.keylen, DMA_TO_DEVICE);
  dev_dbg(dev, "Unmapped key-buffer: key_dma_addr=%pad keylen=%u\n",
   &ctx->key_params.key_dma_addr, ctx->key_params.keylen);
 }

 kzfree(ctx->key_params.key);

 return rc;
}

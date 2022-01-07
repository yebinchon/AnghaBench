
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_crypto_req {int dummy; } ;
struct TYPE_3__ {scalar_t__ padded_authkey_dma_addr; } ;
struct TYPE_4__ {TYPE_1__ hmac; } ;
struct cc_aead_ctx {int auth_mode; unsigned int hash_len; int drvdata; TYPE_2__ auth_state; } ;
typedef scalar_t__ dma_addr_t ;


 int BYPASS ;
 int DIN_HASH ;
 int DMA_DLLI ;
 int DMA_TO_DEVICE ;
 unsigned int DRV_HASH_HW_SHA1 ;
 unsigned int DRV_HASH_HW_SHA256 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HASH_DIGEST_RESULT_LITTLE_ENDIAN ;
 int HASH_PADDING_DISABLED ;
 int HASH_PADDING_ENABLED ;
 int MAX_AEAD_SETKEY_SEQ ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_LOAD_STATE0 ;
 int SETUP_WRITE_STATE0 ;
 unsigned int SHA1_BLOCK_SIZE ;
 unsigned int SHA1_DIGEST_SIZE ;
 unsigned int SHA256_BLOCK_SIZE ;
 unsigned int SHA256_DIGEST_SIZE ;
 int S_DIN_to_HASH ;
 int S_HASH_to_DOUT ;
 int cc_larval_digest_addr (int ,int) ;
 int cc_send_sync_request (int ,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int dev_err (struct device*,char*,int,...) ;
 scalar_t__ dma_map_single (struct device*,void*,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_single (struct device*,scalar_t__,unsigned int,int ) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int * kmemdup (int const*,unsigned int,int ) ;
 int kzfree (int *) ;
 int set_cipher_config0 (struct cc_hw_desc*,int ) ;
 int set_cipher_config1 (struct cc_hw_desc*,int ) ;
 int set_cipher_mode (struct cc_hw_desc*,unsigned int) ;
 int set_din_const (struct cc_hw_desc*,int ,unsigned int) ;
 int set_din_sram (struct cc_hw_desc*,int ,unsigned int) ;
 int set_din_type (struct cc_hw_desc*,int ,scalar_t__,unsigned int,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,scalar_t__,unsigned int,int ,int ) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static int cc_get_plain_hmac_key(struct crypto_aead *tfm, const u8 *authkey,
     unsigned int keylen)
{
 dma_addr_t key_dma_addr = 0;
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 u32 larval_addr = cc_larval_digest_addr(ctx->drvdata, ctx->auth_mode);
 struct cc_crypto_req cc_req = {};
 unsigned int blocksize;
 unsigned int digestsize;
 unsigned int hashmode;
 unsigned int idx = 0;
 int rc = 0;
 u8 *key = ((void*)0);
 struct cc_hw_desc desc[MAX_AEAD_SETKEY_SEQ];
 dma_addr_t padded_authkey_dma_addr =
  ctx->auth_state.hmac.padded_authkey_dma_addr;

 switch (ctx->auth_mode) {
 case 129:
  blocksize = SHA1_BLOCK_SIZE;
  digestsize = SHA1_DIGEST_SIZE;
  hashmode = DRV_HASH_HW_SHA1;
  break;
 case 128:
 default:
  blocksize = SHA256_BLOCK_SIZE;
  digestsize = SHA256_DIGEST_SIZE;
  hashmode = DRV_HASH_HW_SHA256;
 }

 if (keylen != 0) {

  key = kmemdup(authkey, keylen, GFP_KERNEL);
  if (!key)
   return -ENOMEM;

  key_dma_addr = dma_map_single(dev, (void *)key, keylen,
           DMA_TO_DEVICE);
  if (dma_mapping_error(dev, key_dma_addr)) {
   dev_err(dev, "Mapping key va=0x%p len=%u for DMA failed\n",
    key, keylen);
   kzfree(key);
   return -ENOMEM;
  }
  if (keylen > blocksize) {

   hw_desc_init(&desc[idx]);
   set_cipher_mode(&desc[idx], hashmode);
   set_din_sram(&desc[idx], larval_addr, digestsize);
   set_flow_mode(&desc[idx], S_DIN_to_HASH);
   set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
   idx++;


   hw_desc_init(&desc[idx]);
   set_cipher_mode(&desc[idx], hashmode);
   set_din_const(&desc[idx], 0, ctx->hash_len);
   set_cipher_config1(&desc[idx], HASH_PADDING_ENABLED);
   set_flow_mode(&desc[idx], S_DIN_to_HASH);
   set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
   idx++;

   hw_desc_init(&desc[idx]);
   set_din_type(&desc[idx], DMA_DLLI,
         key_dma_addr, keylen, NS_BIT);
   set_flow_mode(&desc[idx], DIN_HASH);
   idx++;


   hw_desc_init(&desc[idx]);
   set_cipher_mode(&desc[idx], hashmode);
   set_dout_dlli(&desc[idx], padded_authkey_dma_addr,
          digestsize, NS_BIT, 0);
   set_flow_mode(&desc[idx], S_HASH_to_DOUT);
   set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
   set_cipher_config1(&desc[idx], HASH_PADDING_DISABLED);
   set_cipher_config0(&desc[idx],
        HASH_DIGEST_RESULT_LITTLE_ENDIAN);
   idx++;

   hw_desc_init(&desc[idx]);
   set_din_const(&desc[idx], 0, (blocksize - digestsize));
   set_flow_mode(&desc[idx], BYPASS);
   set_dout_dlli(&desc[idx], (padded_authkey_dma_addr +
          digestsize), (blocksize - digestsize),
          NS_BIT, 0);
   idx++;
  } else {
   hw_desc_init(&desc[idx]);
   set_din_type(&desc[idx], DMA_DLLI, key_dma_addr,
         keylen, NS_BIT);
   set_flow_mode(&desc[idx], BYPASS);
   set_dout_dlli(&desc[idx], padded_authkey_dma_addr,
          keylen, NS_BIT, 0);
   idx++;

   if ((blocksize - keylen) != 0) {
    hw_desc_init(&desc[idx]);
    set_din_const(&desc[idx], 0,
           (blocksize - keylen));
    set_flow_mode(&desc[idx], BYPASS);
    set_dout_dlli(&desc[idx],
           (padded_authkey_dma_addr +
            keylen),
           (blocksize - keylen), NS_BIT, 0);
    idx++;
   }
  }
 } else {
  hw_desc_init(&desc[idx]);
  set_din_const(&desc[idx], 0, (blocksize - keylen));
  set_flow_mode(&desc[idx], BYPASS);
  set_dout_dlli(&desc[idx], padded_authkey_dma_addr,
         blocksize, NS_BIT, 0);
  idx++;
 }

 rc = cc_send_sync_request(ctx->drvdata, &cc_req, desc, idx);
 if (rc)
  dev_err(dev, "send_request() failed (rc=%d)\n", rc);

 if (key_dma_addr)
  dma_unmap_single(dev, key_dma_addr, keylen, DMA_TO_DEVICE);

 kzfree(key);

 return rc;
}

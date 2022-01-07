
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {int enc_keylen; int enckey_dma_addr; } ;
struct aead_request {int dummy; } ;
struct aead_req_ctx {int hkey_dma_addr; } ;


 int AES_BLOCK_SIZE ;
 int DIN_AES_DOUT ;
 int DMA_DLLI ;
 int DRV_CIPHER_ECB ;
 int DRV_CRYPTO_DIRECTION_ENCRYPT ;
 int DRV_HASH_HW_GHASH ;
 int HASH_PADDING_ENABLED ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_LOAD_STATE0 ;
 int S_DIN_to_AES ;
 int S_DIN_to_HASH ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_aes_not_hash_mode (struct cc_hw_desc*) ;
 int set_cipher_config0 (struct cc_hw_desc*,int ) ;
 int set_cipher_config1 (struct cc_hw_desc*,int ) ;
 int set_cipher_do (struct cc_hw_desc*,int) ;
 int set_cipher_mode (struct cc_hw_desc*,int ) ;
 int set_din_const (struct cc_hw_desc*,int,int ) ;
 int set_din_no_dma (struct cc_hw_desc*,int ,int) ;
 int set_din_type (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_dout_no_dma (struct cc_hw_desc*,int ,int ,int) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_key_size_aes (struct cc_hw_desc*,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static void cc_set_ghash_desc(struct aead_request *req,
         struct cc_hw_desc desc[], unsigned int *seq_size)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct aead_req_ctx *req_ctx = aead_request_ctx(req);
 unsigned int idx = *seq_size;


 hw_desc_init(&desc[idx]);
 set_cipher_mode(&desc[idx], DRV_CIPHER_ECB);
 set_cipher_config0(&desc[idx], DRV_CRYPTO_DIRECTION_ENCRYPT);
 set_din_type(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
       ctx->enc_keylen, NS_BIT);
 set_key_size_aes(&desc[idx], ctx->enc_keylen);
 set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
 set_flow_mode(&desc[idx], S_DIN_to_AES);
 idx++;


 hw_desc_init(&desc[idx]);
 set_din_const(&desc[idx], 0x0, AES_BLOCK_SIZE);
 set_dout_dlli(&desc[idx], req_ctx->hkey_dma_addr, AES_BLOCK_SIZE,
        NS_BIT, 0);
 set_flow_mode(&desc[idx], DIN_AES_DOUT);
 idx++;


 hw_desc_init(&desc[idx]);
 set_din_no_dma(&desc[idx], 0, 0xfffff0);
 set_dout_no_dma(&desc[idx], 0, 0, 1);
 idx++;


 hw_desc_init(&desc[idx]);
 set_din_type(&desc[idx], DMA_DLLI, req_ctx->hkey_dma_addr,
       AES_BLOCK_SIZE, NS_BIT);
 set_dout_no_dma(&desc[idx], 0, 0, 1);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_aes_not_hash_mode(&desc[idx]);
 set_cipher_mode(&desc[idx], DRV_HASH_HW_GHASH);
 set_cipher_config1(&desc[idx], HASH_PADDING_ENABLED);
 set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
 idx++;






 hw_desc_init(&desc[idx]);
 set_din_no_dma(&desc[idx], 0, 0xfffff0);
 set_dout_no_dma(&desc[idx], 0, 0, 1);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_aes_not_hash_mode(&desc[idx]);
 set_cipher_mode(&desc[idx], DRV_HASH_HW_GHASH);
 set_cipher_do(&desc[idx], 1);
 set_cipher_config0(&desc[idx], DRV_CRYPTO_DIRECTION_ENCRYPT);
 set_cipher_config1(&desc[idx], HASH_PADDING_ENABLED);
 set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
 idx++;




 hw_desc_init(&desc[idx]);
 set_din_const(&desc[idx], 0x0, AES_BLOCK_SIZE);
 set_dout_no_dma(&desc[idx], 0, 0, 1);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_aes_not_hash_mode(&desc[idx]);
 set_cipher_mode(&desc[idx], DRV_HASH_HW_GHASH);
 set_cipher_config1(&desc[idx], HASH_PADDING_ENABLED);
 set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
 idx++;

 *seq_size = idx;
}

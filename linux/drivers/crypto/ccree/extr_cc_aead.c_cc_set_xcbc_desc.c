
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_3__ {scalar_t__ xcbc_keys_dma_addr; } ;
struct TYPE_4__ {TYPE_1__ xcbc; } ;
struct cc_aead_ctx {TYPE_2__ auth_state; } ;
struct aead_request {int dummy; } ;


 int AES_KEYSIZE_128 ;
 int CC_AES_128_BIT_KEY_SIZE ;
 int CC_AES_BLOCK_SIZE ;
 int DESC_DIRECTION_ENCRYPT_ENCRYPT ;
 int DMA_DLLI ;
 int DRV_CIPHER_XCBC_MAC ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_LOAD_STATE0 ;
 int SETUP_LOAD_STATE1 ;
 int SETUP_LOAD_STATE2 ;
 int S_DIN_to_HASH ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_aes_not_hash_mode (struct cc_hw_desc*) ;
 int set_cipher_config0 (struct cc_hw_desc*,int ) ;
 int set_cipher_mode (struct cc_hw_desc*,int ) ;
 int set_din_const (struct cc_hw_desc*,int ,int ) ;
 int set_din_type (struct cc_hw_desc*,int ,scalar_t__,int,int ) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_key_size_aes (struct cc_hw_desc*,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static void cc_set_xcbc_desc(struct aead_request *req, struct cc_hw_desc desc[],
        unsigned int *seq_size)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 unsigned int idx = *seq_size;


 hw_desc_init(&desc[idx]);
 set_din_const(&desc[idx], 0, CC_AES_BLOCK_SIZE);
 set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
 set_cipher_mode(&desc[idx], DRV_CIPHER_XCBC_MAC);
 set_cipher_config0(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
 set_key_size_aes(&desc[idx], CC_AES_128_BIT_KEY_SIZE);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_aes_not_hash_mode(&desc[idx]);
 idx++;


 hw_desc_init(&desc[idx]);
 set_din_type(&desc[idx], DMA_DLLI,
       ctx->auth_state.xcbc.xcbc_keys_dma_addr,
       AES_KEYSIZE_128, NS_BIT);
 set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
 set_cipher_mode(&desc[idx], DRV_CIPHER_XCBC_MAC);
 set_cipher_config0(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
 set_key_size_aes(&desc[idx], CC_AES_128_BIT_KEY_SIZE);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_aes_not_hash_mode(&desc[idx]);
 idx++;


 hw_desc_init(&desc[idx]);
 set_din_type(&desc[idx], DMA_DLLI,
       (ctx->auth_state.xcbc.xcbc_keys_dma_addr +
        AES_KEYSIZE_128), AES_KEYSIZE_128, NS_BIT);
 set_setup_mode(&desc[idx], SETUP_LOAD_STATE1);
 set_cipher_mode(&desc[idx], DRV_CIPHER_XCBC_MAC);
 set_cipher_config0(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
 set_key_size_aes(&desc[idx], CC_AES_128_BIT_KEY_SIZE);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_aes_not_hash_mode(&desc[idx]);
 idx++;


 hw_desc_init(&desc[idx]);
 set_din_type(&desc[idx], DMA_DLLI,
       (ctx->auth_state.xcbc.xcbc_keys_dma_addr +
        2 * AES_KEYSIZE_128), AES_KEYSIZE_128, NS_BIT);
 set_setup_mode(&desc[idx], SETUP_LOAD_STATE2);
 set_cipher_mode(&desc[idx], DRV_CIPHER_XCBC_MAC);
 set_cipher_config0(&desc[idx], DESC_DIRECTION_ENCRYPT_ENCRYPT);
 set_key_size_aes(&desc[idx], CC_AES_128_BIT_KEY_SIZE);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_aes_not_hash_mode(&desc[idx]);
 idx++;

 *seq_size = idx;
}

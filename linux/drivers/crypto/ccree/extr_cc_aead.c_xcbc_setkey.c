
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cc_hw_desc {int dummy; } ;
struct TYPE_3__ {scalar_t__ xcbc_keys_dma_addr; } ;
struct TYPE_4__ {TYPE_1__ xcbc; } ;
struct cc_aead_ctx {TYPE_2__ auth_state; int auth_keylen; } ;


 int AES_KEYSIZE_128 ;
 int CC_AES_128_BIT_KEY_SIZE ;
 int DIN_AES_DOUT ;
 int DMA_DLLI ;
 int DRV_CIPHER_ECB ;
 int DRV_CRYPTO_DIRECTION_ENCRYPT ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int S_DIN_to_AES ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config0 (struct cc_hw_desc*,int ) ;
 int set_cipher_mode (struct cc_hw_desc*,int ) ;
 int set_din_const (struct cc_hw_desc*,int,int ) ;
 int set_din_type (struct cc_hw_desc*,int ,scalar_t__,int ,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,scalar_t__,int,int ,int ) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_key_size_aes (struct cc_hw_desc*,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static unsigned int xcbc_setkey(struct cc_hw_desc *desc,
    struct cc_aead_ctx *ctx)
{

 hw_desc_init(&desc[0]);




 set_din_type(&desc[0], DMA_DLLI,
       ctx->auth_state.xcbc.xcbc_keys_dma_addr, ctx->auth_keylen,
       NS_BIT);
 set_cipher_mode(&desc[0], DRV_CIPHER_ECB);
 set_cipher_config0(&desc[0], DRV_CRYPTO_DIRECTION_ENCRYPT);
 set_key_size_aes(&desc[0], ctx->auth_keylen);
 set_flow_mode(&desc[0], S_DIN_to_AES);
 set_setup_mode(&desc[0], SETUP_LOAD_KEY0);

 hw_desc_init(&desc[1]);
 set_din_const(&desc[1], 0x01010101, CC_AES_128_BIT_KEY_SIZE);
 set_flow_mode(&desc[1], DIN_AES_DOUT);
 set_dout_dlli(&desc[1], ctx->auth_state.xcbc.xcbc_keys_dma_addr,
        AES_KEYSIZE_128, NS_BIT, 0);

 hw_desc_init(&desc[2]);
 set_din_const(&desc[2], 0x02020202, CC_AES_128_BIT_KEY_SIZE);
 set_flow_mode(&desc[2], DIN_AES_DOUT);
 set_dout_dlli(&desc[2], (ctx->auth_state.xcbc.xcbc_keys_dma_addr
      + AES_KEYSIZE_128),
         AES_KEYSIZE_128, NS_BIT, 0);

 hw_desc_init(&desc[3]);
 set_din_const(&desc[3], 0x03030303, CC_AES_128_BIT_KEY_SIZE);
 set_flow_mode(&desc[3], DIN_AES_DOUT);
 set_dout_dlli(&desc[3], (ctx->auth_state.xcbc.xcbc_keys_dma_addr
       + 2 * AES_KEYSIZE_128),
         AES_KEYSIZE_128, NS_BIT, 0);

 return 4;
}

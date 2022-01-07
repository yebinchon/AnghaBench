
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cc_hw_desc {int dummy; } ;
struct cc_hmac_s {scalar_t__ ipad_opad_dma_addr; int padded_authkey_dma_addr; } ;
struct TYPE_2__ {struct cc_hmac_s hmac; } ;
struct cc_aead_ctx {scalar_t__ auth_mode; int hash_len; int drvdata; TYPE_1__ auth_state; } ;


 unsigned int CC_SHA1_DIGEST_SIZE ;
 unsigned int CC_SHA256_DIGEST_SIZE ;
 int DIN_HASH ;
 int DMA_DLLI ;
 unsigned int DRV_HASH_HW_SHA1 ;
 unsigned int DRV_HASH_HW_SHA256 ;
 scalar_t__ DRV_HASH_SHA1 ;
 int HASH_PADDING_DISABLED ;
 unsigned int HMAC_IPAD_CONST ;
 unsigned int HMAC_OPAD_CONST ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_LOAD_STATE0 ;
 int SETUP_LOAD_STATE1 ;
 int SETUP_WRITE_STATE0 ;
 int SHA256_BLOCK_SIZE ;
 int S_DIN_to_HASH ;
 int S_HASH_to_DOUT ;
 int cc_larval_digest_addr (int ,scalar_t__) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config1 (struct cc_hw_desc*,int ) ;
 int set_cipher_mode (struct cc_hw_desc*,unsigned int) ;
 int set_din_const (struct cc_hw_desc*,int ,int ) ;
 int set_din_sram (struct cc_hw_desc*,int ,unsigned int) ;
 int set_din_type (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,scalar_t__,unsigned int,int ,int ) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;
 int set_xor_active (struct cc_hw_desc*) ;
 int set_xor_val (struct cc_hw_desc*,unsigned int) ;

__attribute__((used)) static int hmac_setkey(struct cc_hw_desc *desc, struct cc_aead_ctx *ctx)
{
 unsigned int hmac_pad_const[2] = { HMAC_IPAD_CONST, HMAC_OPAD_CONST };
 unsigned int digest_ofs = 0;
 unsigned int hash_mode = (ctx->auth_mode == DRV_HASH_SHA1) ?
   DRV_HASH_HW_SHA1 : DRV_HASH_HW_SHA256;
 unsigned int digest_size = (ctx->auth_mode == DRV_HASH_SHA1) ?
   CC_SHA1_DIGEST_SIZE : CC_SHA256_DIGEST_SIZE;
 struct cc_hmac_s *hmac = &ctx->auth_state.hmac;

 unsigned int idx = 0;
 int i;


 for (i = 0; i < 2; i++) {

  hw_desc_init(&desc[idx]);
  set_cipher_mode(&desc[idx], hash_mode);
  set_din_sram(&desc[idx],
        cc_larval_digest_addr(ctx->drvdata,
         ctx->auth_mode),
        digest_size);
  set_flow_mode(&desc[idx], S_DIN_to_HASH);
  set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
  idx++;


  hw_desc_init(&desc[idx]);
  set_cipher_mode(&desc[idx], hash_mode);
  set_din_const(&desc[idx], 0, ctx->hash_len);
  set_flow_mode(&desc[idx], S_DIN_to_HASH);
  set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
  idx++;


  hw_desc_init(&desc[idx]);
  set_xor_val(&desc[idx], hmac_pad_const[i]);
  set_cipher_mode(&desc[idx], hash_mode);
  set_flow_mode(&desc[idx], S_DIN_to_HASH);
  set_setup_mode(&desc[idx], SETUP_LOAD_STATE1);
  idx++;


  hw_desc_init(&desc[idx]);
  set_din_type(&desc[idx], DMA_DLLI,
        hmac->padded_authkey_dma_addr,
        SHA256_BLOCK_SIZE, NS_BIT);
  set_cipher_mode(&desc[idx], hash_mode);
  set_xor_active(&desc[idx]);
  set_flow_mode(&desc[idx], DIN_HASH);
  idx++;


  hw_desc_init(&desc[idx]);
  set_cipher_mode(&desc[idx], hash_mode);
  set_dout_dlli(&desc[idx],
         (hmac->ipad_opad_dma_addr + digest_ofs),
         digest_size, NS_BIT, 0);
  set_flow_mode(&desc[idx], S_HASH_to_DOUT);
  set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
  set_cipher_config1(&desc[idx], HASH_PADDING_DISABLED);
  idx++;

  digest_ofs += digest_size;
 }

 return idx;
}

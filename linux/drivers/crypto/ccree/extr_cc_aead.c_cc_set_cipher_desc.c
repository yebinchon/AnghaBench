
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {scalar_t__ flow_mode; scalar_t__ cipher_mode; int enc_keylen; int enckey_dma_addr; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {int op_type; int iv_dma_addr; } ;
struct aead_req_ctx {unsigned int hw_iv_size; TYPE_1__ gen_ctx; } ;


 unsigned int CC_AES_KEY_SIZE_MAX ;
 int DMA_DLLI ;
 scalar_t__ DRV_CIPHER_CTR ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_LOAD_STATE0 ;
 int SETUP_LOAD_STATE1 ;
 scalar_t__ S_DIN_to_AES ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config0 (struct cc_hw_desc*,int) ;
 int set_cipher_mode (struct cc_hw_desc*,scalar_t__) ;
 int set_din_type (struct cc_hw_desc*,int ,int ,unsigned int,int ) ;
 int set_flow_mode (struct cc_hw_desc*,scalar_t__) ;
 int set_key_size_aes (struct cc_hw_desc*,unsigned int) ;
 int set_key_size_des (struct cc_hw_desc*,unsigned int) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static void cc_set_cipher_desc(struct aead_request *req,
          struct cc_hw_desc desc[],
          unsigned int *seq_size)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct aead_req_ctx *req_ctx = aead_request_ctx(req);
 unsigned int hw_iv_size = req_ctx->hw_iv_size;
 unsigned int idx = *seq_size;
 int direct = req_ctx->gen_ctx.op_type;


 hw_desc_init(&desc[idx]);
 set_cipher_config0(&desc[idx], direct);
 set_flow_mode(&desc[idx], ctx->flow_mode);
 set_din_type(&desc[idx], DMA_DLLI, req_ctx->gen_ctx.iv_dma_addr,
       hw_iv_size, NS_BIT);
 if (ctx->cipher_mode == DRV_CIPHER_CTR)
  set_setup_mode(&desc[idx], SETUP_LOAD_STATE1);
 else
  set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
 set_cipher_mode(&desc[idx], ctx->cipher_mode);
 idx++;


 hw_desc_init(&desc[idx]);
 set_cipher_config0(&desc[idx], direct);
 set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
 set_flow_mode(&desc[idx], ctx->flow_mode);
 if (ctx->flow_mode == S_DIN_to_AES) {
  set_din_type(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
        ((ctx->enc_keylen == 24) ? CC_AES_KEY_SIZE_MAX :
         ctx->enc_keylen), NS_BIT);
  set_key_size_aes(&desc[idx], ctx->enc_keylen);
 } else {
  set_din_type(&desc[idx], DMA_DLLI, ctx->enckey_dma_addr,
        ctx->enc_keylen, NS_BIT);
  set_key_size_des(&desc[idx], ctx->enc_keylen);
 }
 set_cipher_mode(&desc[idx], ctx->cipher_mode);
 idx++;

 *seq_size = idx;
}

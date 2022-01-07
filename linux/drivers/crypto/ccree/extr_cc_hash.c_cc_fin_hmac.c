
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int hash_len; int hash_mode; int drvdata; int hw_mode; int inter_digestsize; } ;
struct ahash_request {int dummy; } ;
struct ahash_req_ctx {int digest_buff_dma_addr; int opad_digest_dma_addr; } ;


 int DIN_HASH ;
 int DMA_DLLI ;
 int HASH_PADDING_ENABLED ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_LOAD_STATE0 ;
 int SETUP_WRITE_STATE0 ;
 int S_DIN_to_HASH ;
 int S_HASH_to_DOUT ;
 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cc_digest_len_addr (int ,int ) ;
 int cc_set_endianity (int ,struct cc_hw_desc*) ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config1 (struct cc_hw_desc*,int ) ;
 int set_cipher_mode (struct cc_hw_desc*,int ) ;
 int set_din_no_dma (struct cc_hw_desc*,int ,int) ;
 int set_din_sram (struct cc_hw_desc*,int ,int ) ;
 int set_din_type (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_dout_no_dma (struct cc_hw_desc*,int ,int ,int) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static int cc_fin_hmac(struct cc_hw_desc *desc, struct ahash_request *req,
         int idx)
{
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 u32 digestsize = crypto_ahash_digestsize(tfm);


 hw_desc_init(&desc[idx]);
 set_cipher_mode(&desc[idx], ctx->hw_mode);
 set_dout_dlli(&desc[idx], state->digest_buff_dma_addr, digestsize,
        NS_BIT, 0);
 set_flow_mode(&desc[idx], S_HASH_to_DOUT);
 cc_set_endianity(ctx->hash_mode, &desc[idx]);
 set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
 idx++;


 hw_desc_init(&desc[idx]);
 set_cipher_mode(&desc[idx], ctx->hw_mode);
 set_din_type(&desc[idx], DMA_DLLI, state->opad_digest_dma_addr,
       ctx->inter_digestsize, NS_BIT);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
 idx++;


 hw_desc_init(&desc[idx]);
 set_cipher_mode(&desc[idx], ctx->hw_mode);
 set_din_sram(&desc[idx],
       cc_digest_len_addr(ctx->drvdata, ctx->hash_mode),
       ctx->hash_len);
 set_cipher_config1(&desc[idx], HASH_PADDING_ENABLED);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
 idx++;


 hw_desc_init(&desc[idx]);
 set_din_no_dma(&desc[idx], 0, 0xfffff0);
 set_dout_no_dma(&desc[idx], 0, 0, 1);
 idx++;


 hw_desc_init(&desc[idx]);
 set_din_type(&desc[idx], DMA_DLLI, state->digest_buff_dma_addr,
       digestsize, NS_BIT);
 set_flow_mode(&desc[idx], DIN_HASH);
 idx++;

 return idx;
}

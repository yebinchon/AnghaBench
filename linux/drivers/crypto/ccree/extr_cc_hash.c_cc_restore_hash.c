
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int hash_len; int hash_mode; int hw_mode; int inter_digestsize; } ;
struct ahash_req_ctx {int digest_bytes_len_dma_addr; int digest_buff_dma_addr; } ;


 int DIN_HASH ;
 int DMA_DLLI ;
 int HASH_PADDING_DISABLED ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int SETUP_LOAD_STATE0 ;
 int S_DIN_to_HASH ;
 int cc_set_desc (struct ahash_req_ctx*,struct cc_hash_ctx*,int ,struct cc_hw_desc*,int,unsigned int*) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config1 (struct cc_hw_desc*,int ) ;
 int set_din_type (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_hash_cipher_mode (struct cc_hw_desc*,int ,int ) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static int cc_restore_hash(struct cc_hw_desc *desc, struct cc_hash_ctx *ctx,
      struct ahash_req_ctx *state, unsigned int idx)
{

 hw_desc_init(&desc[idx]);
 set_hash_cipher_mode(&desc[idx], ctx->hw_mode, ctx->hash_mode);
 set_din_type(&desc[idx], DMA_DLLI, state->digest_buff_dma_addr,
       ctx->inter_digestsize, NS_BIT);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_setup_mode(&desc[idx], SETUP_LOAD_STATE0);
 idx++;


 hw_desc_init(&desc[idx]);
 set_hash_cipher_mode(&desc[idx], ctx->hw_mode, ctx->hash_mode);
 set_cipher_config1(&desc[idx], HASH_PADDING_DISABLED);
 set_din_type(&desc[idx], DMA_DLLI, state->digest_bytes_len_dma_addr,
       ctx->hash_len, NS_BIT);
 set_flow_mode(&desc[idx], S_DIN_to_HASH);
 set_setup_mode(&desc[idx], SETUP_LOAD_KEY0);
 idx++;

 cc_set_desc(state, ctx, DIN_HASH, desc, 0, &idx);

 return idx;
}

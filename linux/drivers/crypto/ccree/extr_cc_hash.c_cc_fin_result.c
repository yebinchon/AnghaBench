
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_ahash {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_hash_ctx {int hash_mode; int drvdata; int hw_mode; } ;
struct ahash_request {int dummy; } ;
struct ahash_req_ctx {int digest_result_dma_addr; } ;


 int HASH_PADDING_DISABLED ;
 int NS_BIT ;
 int SETUP_WRITE_STATE0 ;
 int S_HASH_to_DOUT ;
 struct ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cc_set_endianity (int ,struct cc_hw_desc*) ;
 struct cc_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config1 (struct cc_hw_desc*,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,int ,int ,int ,int) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;
 int set_hash_cipher_mode (struct cc_hw_desc*,int ,int ) ;
 int set_queue_last_ind (int ,struct cc_hw_desc*) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static int cc_fin_result(struct cc_hw_desc *desc, struct ahash_request *req,
    int idx)
{
 struct ahash_req_ctx *state = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cc_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 u32 digestsize = crypto_ahash_digestsize(tfm);


 hw_desc_init(&desc[idx]);
 set_hash_cipher_mode(&desc[idx], ctx->hw_mode, ctx->hash_mode);

 set_dout_dlli(&desc[idx], state->digest_result_dma_addr, digestsize,
        NS_BIT, 1);
 set_queue_last_ind(ctx->drvdata, &desc[idx]);
 set_flow_mode(&desc[idx], S_HASH_to_DOUT);
 set_setup_mode(&desc[idx], SETUP_WRITE_STATE0);
 set_cipher_config1(&desc[idx], HASH_PADDING_DISABLED);
 cc_set_endianity(ctx->hash_mode, &desc[idx]);
 idx++;

 return idx;
}

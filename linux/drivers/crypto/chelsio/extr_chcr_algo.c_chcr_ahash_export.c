
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chcr_ahash_req_ctx {int partial_hash; int reqlen; int reqbfr; int bfr1; int data_len; } ;
struct ahash_request {int dummy; } ;


 int CHCR_HASH_MAX_DIGEST_SIZE ;
 struct chcr_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int chcr_init_hctx_per_wr (struct chcr_ahash_req_ctx*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int chcr_ahash_export(struct ahash_request *areq, void *out)
{
 struct chcr_ahash_req_ctx *req_ctx = ahash_request_ctx(areq);
 struct chcr_ahash_req_ctx *state = out;

 state->reqlen = req_ctx->reqlen;
 state->data_len = req_ctx->data_len;
 memcpy(state->bfr1, req_ctx->reqbfr, req_ctx->reqlen);
 memcpy(state->partial_hash, req_ctx->partial_hash,
        CHCR_HASH_MAX_DIGEST_SIZE);
 chcr_init_hctx_per_wr(state);
 return 0;
}

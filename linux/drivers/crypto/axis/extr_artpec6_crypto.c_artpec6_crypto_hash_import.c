
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_hash_request_context {int digeststate; int partial_buffer; void* hash_md; int hash_flags; int partial_bytes; int digcnt; } ;
struct artpec6_hash_export_state {int digeststate; int partial_buffer; int oper; int hash_flags; int partial_bytes; int digcnt; } ;
struct artpec6_crypto {int variant; } ;
struct ahash_request {int dummy; } ;
typedef enum artpec6_crypto_variant { ____Placeholder_artpec6_crypto_variant } artpec6_crypto_variant ;


 int A6_CRY_MD_OPER ;
 int A7_CRY_MD_OPER ;
 int ARTPEC6_CRYPTO ;
 void* FIELD_PREP (int ,int ) ;
 struct artpec6_hash_request_context* ahash_request_ctx (struct ahash_request*) ;
 int artpec6_crypto_dev ;
 struct artpec6_crypto* dev_get_drvdata (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct artpec6_hash_request_context*,int ,int) ;

__attribute__((used)) static int artpec6_crypto_hash_import(struct ahash_request *req, const void *in)
{
 struct artpec6_hash_request_context *ctx = ahash_request_ctx(req);
 const struct artpec6_hash_export_state *state = in;
 struct artpec6_crypto *ac = dev_get_drvdata(artpec6_crypto_dev);
 enum artpec6_crypto_variant variant = ac->variant;

 memset(ctx, 0, sizeof(*ctx));

 ctx->digcnt = state->digcnt;
 ctx->partial_bytes = state->partial_bytes;
 ctx->hash_flags = state->hash_flags;

 if (variant == ARTPEC6_CRYPTO)
  ctx->hash_md = FIELD_PREP(A6_CRY_MD_OPER, state->oper);
 else
  ctx->hash_md = FIELD_PREP(A7_CRY_MD_OPER, state->oper);

 memcpy(ctx->partial_buffer, state->partial_buffer,
        sizeof(state->partial_buffer));
 memcpy(ctx->digeststate, state->digeststate,
        sizeof(state->digeststate));

 return 0;
}

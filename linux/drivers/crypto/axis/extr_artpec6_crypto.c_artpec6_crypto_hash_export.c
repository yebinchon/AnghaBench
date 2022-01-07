
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_hash_request_context {int digeststate; int partial_buffer; int hash_md; int hash_flags; int partial_bytes; int digcnt; } ;
struct artpec6_hash_export_state {int digeststate; int partial_buffer; void* oper; int hash_flags; int partial_bytes; int digcnt; } ;
struct artpec6_crypto {int variant; } ;
struct ahash_request {int dummy; } ;
typedef enum artpec6_crypto_variant { ____Placeholder_artpec6_crypto_variant } artpec6_crypto_variant ;


 int A6_CRY_MD_OPER ;
 int A7_CRY_MD_OPER ;
 int ARTPEC6_CRYPTO ;
 int BUILD_BUG_ON (int) ;
 void* FIELD_GET (int ,int ) ;
 struct artpec6_hash_request_context* ahash_request_ctx (struct ahash_request*) ;
 int artpec6_crypto_dev ;
 struct artpec6_crypto* dev_get_drvdata (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int artpec6_crypto_hash_export(struct ahash_request *req, void *out)
{
 const struct artpec6_hash_request_context *ctx = ahash_request_ctx(req);
 struct artpec6_hash_export_state *state = out;
 struct artpec6_crypto *ac = dev_get_drvdata(artpec6_crypto_dev);
 enum artpec6_crypto_variant variant = ac->variant;

 BUILD_BUG_ON(sizeof(state->partial_buffer) !=
       sizeof(ctx->partial_buffer));
 BUILD_BUG_ON(sizeof(state->digeststate) != sizeof(ctx->digeststate));

 state->digcnt = ctx->digcnt;
 state->partial_bytes = ctx->partial_bytes;
 state->hash_flags = ctx->hash_flags;

 if (variant == ARTPEC6_CRYPTO)
  state->oper = FIELD_GET(A6_CRY_MD_OPER, ctx->hash_md);
 else
  state->oper = FIELD_GET(A7_CRY_MD_OPER, ctx->hash_md);

 memcpy(state->partial_buffer, ctx->partial_buffer,
        sizeof(state->partial_buffer));
 memcpy(state->digeststate, ctx->digeststate,
        sizeof(state->digeststate));

 return 0;
}

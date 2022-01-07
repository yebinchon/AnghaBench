
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct artpec6_hash_request_context {int hash_flags; void* hash_md; } ;
struct artpec6_crypto {int variant; } ;
struct ahash_request {int dummy; } ;
typedef enum artpec6_crypto_variant { ____Placeholder_artpec6_crypto_variant } artpec6_crypto_variant ;


 int A6_CRY_MD_OPER ;
 int A7_CRY_MD_OPER ;
 int ARTPEC6_CRYPTO ;


 int EINVAL ;
 void* FIELD_PREP (int ,int ) ;
 int HASH_FLAG_HMAC ;
 int HASH_FLAG_INIT_CTX ;
 int HASH_FLAG_UPDATE_KEY ;
 int MODULE_NAME ;
 struct artpec6_hash_request_context* ahash_request_ctx (struct ahash_request*) ;
 int artpec6_crypto_dev ;
 struct artpec6_crypto* dev_get_drvdata (int ) ;
 int memset (struct artpec6_hash_request_context*,int ,int) ;
 int pr_err (char*,int ,int) ;
 int regk_crypto_hmac_sha1 ;
 int regk_crypto_hmac_sha256 ;
 int regk_crypto_sha1 ;
 int regk_crypto_sha256 ;

__attribute__((used)) static int
artpec6_crypto_init_hash(struct ahash_request *req, u8 type, int hmac)
{
 struct artpec6_crypto *ac = dev_get_drvdata(artpec6_crypto_dev);
 enum artpec6_crypto_variant variant = ac->variant;
 struct artpec6_hash_request_context *req_ctx = ahash_request_ctx(req);
 u32 oper;

 memset(req_ctx, 0, sizeof(*req_ctx));

 req_ctx->hash_flags = HASH_FLAG_INIT_CTX;
 if (hmac)
  req_ctx->hash_flags |= (HASH_FLAG_HMAC | HASH_FLAG_UPDATE_KEY);

 switch (type) {
 case 129:
  oper = hmac ? regk_crypto_hmac_sha1 : regk_crypto_sha1;
  break;
 case 128:
  oper = hmac ? regk_crypto_hmac_sha256 : regk_crypto_sha256;
  break;
 default:
  pr_err("%s: Unsupported hash type 0x%x\n", MODULE_NAME, type);
  return -EINVAL;
 }

 if (variant == ARTPEC6_CRYPTO)
  req_ctx->hash_md = FIELD_PREP(A6_CRY_MD_OPER, oper);
 else
  req_ctx->hash_md = FIELD_PREP(A7_CRY_MD_OPER, oper);

 return 0;
}

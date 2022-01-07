
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct artpec6_cryptotfm_context {int dummy; } ;
struct artpec6_crypto_aead_req_ctx {int dummy; } ;


 struct artpec6_cryptotfm_context* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_reqsize (struct crypto_aead*,int) ;
 int memset (struct artpec6_cryptotfm_context*,int ,int) ;

__attribute__((used)) static int artpec6_crypto_aead_init(struct crypto_aead *tfm)
{
 struct artpec6_cryptotfm_context *tfm_ctx = crypto_aead_ctx(tfm);

 memset(tfm_ctx, 0, sizeof(*tfm_ctx));

 crypto_aead_set_reqsize(tfm,
    sizeof(struct artpec6_crypto_aead_req_ctx));

 return 0;
}

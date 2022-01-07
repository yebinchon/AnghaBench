
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {int drvdata; } ;


 unsigned int cc_get_default_hash_len (int ) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;

__attribute__((used)) static unsigned int cc_get_aead_hash_len(struct crypto_aead *tfm)
{
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);

 return cc_get_default_hash_len(ctx->drvdata);
}

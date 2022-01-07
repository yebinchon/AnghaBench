
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int tfm; } ;
struct TYPE_2__ {int tfm; } ;
struct padlock_sha_desc {TYPE_1__ fallback; } ;
struct padlock_sha_ctx {int fallback; } ;


 struct padlock_sha_ctx* crypto_shash_ctx (int ) ;
 int crypto_shash_import (TYPE_1__*,void const*) ;
 struct padlock_sha_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int padlock_sha_import(struct shash_desc *desc, const void *in)
{
 struct padlock_sha_desc *dctx = shash_desc_ctx(desc);
 struct padlock_sha_ctx *ctx = crypto_shash_ctx(desc->tfm);

 dctx->fallback.tfm = ctx->fallback;
 return crypto_shash_import(&dctx->fallback, in);
}

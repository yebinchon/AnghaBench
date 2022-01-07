
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ctx_handle; struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {int * ndev; TYPE_1__ u; scalar_t__ chdr; } ;
struct flexi_crypto_context {int auth; int crypto; } ;
struct crypto_keys {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct auth_keys {int dummy; } ;


 struct nitrox_crypto_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_context (void*) ;
 int memzero_explicit (int *,int) ;
 int nitrox_put_device (int *) ;

__attribute__((used)) static void nitrox_aead_exit(struct crypto_aead *aead)
{
 struct nitrox_crypto_ctx *nctx = crypto_aead_ctx(aead);


 if (nctx->u.ctx_handle) {
  struct flexi_crypto_context *fctx = nctx->u.fctx;

  memzero_explicit(&fctx->crypto, sizeof(struct crypto_keys));
  memzero_explicit(&fctx->auth, sizeof(struct auth_keys));
  crypto_free_context((void *)nctx->chdr);
 }
 nitrox_put_device(nctx->ndev);

 nctx->u.ctx_handle = 0;
 nctx->ndev = ((void*)0);
}

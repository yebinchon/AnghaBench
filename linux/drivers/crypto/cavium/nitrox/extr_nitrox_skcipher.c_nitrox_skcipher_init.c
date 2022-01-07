
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nitrox_kcrypt_request {int dummy; } ;
struct TYPE_2__ {uintptr_t ctx_handle; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; struct crypto_ctx_hdr* chdr; int ndev; } ;
struct ctx_hdr {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_ctx_hdr {scalar_t__ vaddr; } ;


 int ENODEV ;
 int ENOMEM ;
 struct crypto_ctx_hdr* crypto_alloc_context (int ) ;
 struct nitrox_crypto_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 scalar_t__ crypto_skcipher_reqsize (struct crypto_skcipher*) ;
 int crypto_skcipher_set_reqsize (struct crypto_skcipher*,scalar_t__) ;
 int nitrox_get_first_device () ;
 int nitrox_put_device (int ) ;

__attribute__((used)) static int nitrox_skcipher_init(struct crypto_skcipher *tfm)
{
 struct nitrox_crypto_ctx *nctx = crypto_skcipher_ctx(tfm);
 struct crypto_ctx_hdr *chdr;


 nctx->ndev = nitrox_get_first_device();
 if (!nctx->ndev)
  return -ENODEV;


 chdr = crypto_alloc_context(nctx->ndev);
 if (!chdr) {
  nitrox_put_device(nctx->ndev);
  return -ENOMEM;
 }
 nctx->chdr = chdr;
 nctx->u.ctx_handle = (uintptr_t)((u8 *)chdr->vaddr +
      sizeof(struct ctx_hdr));
 crypto_skcipher_set_reqsize(tfm, crypto_skcipher_reqsize(tfm) +
        sizeof(struct nitrox_kcrypt_request));
 return 0;
}

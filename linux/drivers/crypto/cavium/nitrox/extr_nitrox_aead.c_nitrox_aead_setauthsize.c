
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int mac_len; } ;
union fc_ctx_flags {int f; TYPE_2__ w0; } ;
struct TYPE_4__ {struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; } ;
struct TYPE_6__ {int f; } ;
struct flexi_crypto_context {TYPE_3__ flags; } ;
struct crypto_aead {unsigned int authsize; } ;


 int be64_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 struct nitrox_crypto_ctx* crypto_aead_ctx (struct crypto_aead*) ;

__attribute__((used)) static int nitrox_aead_setauthsize(struct crypto_aead *aead,
       unsigned int authsize)
{
 struct nitrox_crypto_ctx *nctx = crypto_aead_ctx(aead);
 struct flexi_crypto_context *fctx = nctx->u.fctx;
 union fc_ctx_flags flags;

 flags.f = be64_to_cpu(fctx->flags.f);
 flags.w0.mac_len = authsize;
 fctx->flags.f = cpu_to_be64(flags.f);

 aead->authsize = authsize;

 return 0;
}

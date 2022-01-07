
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int auth_input_type; int iv_source; int hash_type; int cipher_type; } ;
union fc_ctx_flags {int f; TYPE_1__ w0; } ;
struct TYPE_6__ {TYPE_2__* fctx; } ;
struct nitrox_crypto_ctx {TYPE_3__ u; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_5__ {union fc_ctx_flags flags; } ;


 int AUTH_NULL ;
 int CIPHER_AES_GCM ;
 int IV_FROM_DPTR ;
 int be64_to_cpu (int ) ;
 struct nitrox_crypto_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int nitrox_aead_init (struct crypto_aead*) ;

__attribute__((used)) static int nitrox_gcm_common_init(struct crypto_aead *aead)
{
 int ret;
 struct nitrox_crypto_ctx *nctx = crypto_aead_ctx(aead);
 union fc_ctx_flags *flags;

 ret = nitrox_aead_init(aead);
 if (ret)
  return ret;

 flags = &nctx->u.fctx->flags;
 flags->w0.cipher_type = CIPHER_AES_GCM;
 flags->w0.hash_type = AUTH_NULL;
 flags->w0.iv_source = IV_FROM_DPTR;

 flags->w0.auth_input_type = 1;
 flags->f = be64_to_cpu(flags->f);

 return 0;
}

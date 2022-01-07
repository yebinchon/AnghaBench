
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int aes_keylen; } ;
union fc_ctx_flags {int f; TYPE_2__ w0; } ;
typedef int u8 ;
struct TYPE_6__ {struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; } ;
struct TYPE_9__ {int key; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_8__ {int f; } ;
struct flexi_crypto_context {TYPE_5__ crypto; TYPE_3__ flags; } ;
struct crypto_aead {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int be64_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 struct nitrox_crypto_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int flexi_aes_keylen (unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static int nitrox_aes_gcm_setkey(struct crypto_aead *aead, const u8 *key,
     unsigned int keylen)
{
 int aes_keylen;
 struct nitrox_crypto_ctx *nctx = crypto_aead_ctx(aead);
 struct flexi_crypto_context *fctx;
 union fc_ctx_flags flags;

 aes_keylen = flexi_aes_keylen(keylen);
 if (aes_keylen < 0) {
  crypto_aead_set_flags(aead, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }


 fctx = nctx->u.fctx;
 flags.f = be64_to_cpu(fctx->flags.f);
 flags.w0.aes_keylen = aes_keylen;
 fctx->flags.f = cpu_to_be64(flags.f);


 memset(&fctx->crypto, 0, sizeof(fctx->crypto));
 memcpy(fctx->crypto.u.key, key, keylen);

 return 0;
}

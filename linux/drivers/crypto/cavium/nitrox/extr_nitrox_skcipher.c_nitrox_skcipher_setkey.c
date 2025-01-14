
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cipher_type; int aes_keylen; int iv_source; } ;
union fc_ctx_flags {TYPE_2__ w0; scalar_t__ f; } ;
typedef int u8 ;
typedef int u64 ;
struct TYPE_5__ {struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; } ;
struct TYPE_7__ {int key; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct flexi_crypto_context {TYPE_4__ crypto; union fc_ctx_flags flags; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
typedef enum flexi_cipher { ____Placeholder_flexi_cipher } flexi_cipher ;


 int CIPHER_INVALID ;
 int EINVAL ;
 int IV_FROM_DPTR ;
 scalar_t__ cpu_to_be64 (int ) ;
 struct crypto_tfm* crypto_skcipher_tfm (struct crypto_skcipher*) ;
 char* crypto_tfm_alg_name (struct crypto_tfm*) ;
 struct nitrox_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int flexi_cipher_type (char const*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int pr_err (char*,char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int nitrox_skcipher_setkey(struct crypto_skcipher *cipher,
      int aes_keylen, const u8 *key,
      unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 struct nitrox_crypto_ctx *nctx = crypto_tfm_ctx(tfm);
 struct flexi_crypto_context *fctx;
 union fc_ctx_flags *flags;
 enum flexi_cipher cipher_type;
 const char *name;

 name = crypto_tfm_alg_name(tfm);
 cipher_type = flexi_cipher_type(name);
 if (unlikely(cipher_type == CIPHER_INVALID)) {
  pr_err("unsupported cipher: %s\n", name);
  return -EINVAL;
 }


 fctx = nctx->u.fctx;
 flags = &fctx->flags;
 flags->f = 0;
 flags->w0.cipher_type = cipher_type;
 flags->w0.aes_keylen = aes_keylen;
 flags->w0.iv_source = IV_FROM_DPTR;
 flags->f = cpu_to_be64(*(u64 *)&flags->w0);

 memcpy(fctx->crypto.u.key, key, keylen);

 return 0;
}

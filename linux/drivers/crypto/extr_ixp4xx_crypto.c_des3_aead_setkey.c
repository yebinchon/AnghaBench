
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixp_ctx {int authkey_len; int enckey_len; int enckey; int authkey; } ;
struct crypto_authenc_keys {int authkeylen; int enckeylen; int enckey; int authkey; } ;
struct crypto_aead {int dummy; } ;
typedef int keys ;


 int EINVAL ;
 int aead_setup (struct crypto_aead*,int ) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct ixp_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 int memcpy (int ,int ,int) ;
 int memzero_explicit (struct crypto_authenc_keys*,int) ;
 scalar_t__ unlikely (int) ;
 int verify_aead_des3_key (struct crypto_aead*,int ,int) ;

__attribute__((used)) static int des3_aead_setkey(struct crypto_aead *tfm, const u8 *key,
       unsigned int keylen)
{
 struct ixp_ctx *ctx = crypto_aead_ctx(tfm);
 struct crypto_authenc_keys keys;
 int err;

 err = crypto_authenc_extractkeys(&keys, key, keylen);
 if (unlikely(err))
  goto badkey;

 err = -EINVAL;
 if (keys.authkeylen > sizeof(ctx->authkey))
  goto badkey;

 err = verify_aead_des3_key(tfm, keys.enckey, keys.enckeylen);
 if (err)
  goto badkey;

 memcpy(ctx->authkey, keys.authkey, keys.authkeylen);
 memcpy(ctx->enckey, keys.enckey, keys.enckeylen);
 ctx->authkey_len = keys.authkeylen;
 ctx->enckey_len = keys.enckeylen;

 memzero_explicit(&keys, sizeof(keys));
 return aead_setup(tfm, crypto_aead_authsize(tfm));
badkey:
 memzero_explicit(&keys, sizeof(keys));
 return err;
}

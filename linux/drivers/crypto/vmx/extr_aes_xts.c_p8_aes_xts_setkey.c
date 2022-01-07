
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p8_aes_xts_ctx {int fallback; int dec_key; int enc_key; int tweak_key; } ;
struct crypto_skcipher {int dummy; } ;


 int EINVAL ;
 int aes_p8_set_decrypt_key (int const*,unsigned int,int *) ;
 int aes_p8_set_encrypt_key (int const*,unsigned int,int *) ;
 struct p8_aes_xts_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_setkey (int ,int const*,unsigned int) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int xts_verify_key (struct crypto_skcipher*,int const*,unsigned int) ;

__attribute__((used)) static int p8_aes_xts_setkey(struct crypto_skcipher *tfm, const u8 *key,
        unsigned int keylen)
{
 struct p8_aes_xts_ctx *ctx = crypto_skcipher_ctx(tfm);
 int ret;

 ret = xts_verify_key(tfm, key, keylen);
 if (ret)
  return ret;

 preempt_disable();
 pagefault_disable();
 enable_kernel_vsx();
 ret = aes_p8_set_encrypt_key(key + keylen/2, (keylen/2) * 8, &ctx->tweak_key);
 ret |= aes_p8_set_encrypt_key(key, (keylen/2) * 8, &ctx->enc_key);
 ret |= aes_p8_set_decrypt_key(key, (keylen/2) * 8, &ctx->dec_key);
 disable_kernel_vsx();
 pagefault_enable();
 preempt_enable();

 ret |= crypto_skcipher_setkey(ctx->fallback, key, keylen);

 return ret ? -EINVAL : 0;
}

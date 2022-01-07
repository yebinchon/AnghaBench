
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p8_aes_ctx {int fallback; int dec_key; int enc_key; } ;
struct crypto_tfm {int dummy; } ;


 int EINVAL ;
 int aes_p8_set_decrypt_key (int const*,unsigned int,int *) ;
 int aes_p8_set_encrypt_key (int const*,unsigned int,int *) ;
 int crypto_cipher_setkey (int ,int const*,unsigned int) ;
 struct p8_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static int p8_aes_setkey(struct crypto_tfm *tfm, const u8 *key,
    unsigned int keylen)
{
 int ret;
 struct p8_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 preempt_disable();
 pagefault_disable();
 enable_kernel_vsx();
 ret = aes_p8_set_encrypt_key(key, keylen * 8, &ctx->enc_key);
 ret |= aes_p8_set_decrypt_key(key, keylen * 8, &ctx->dec_key);
 disable_kernel_vsx();
 pagefault_enable();
 preempt_enable();

 ret |= crypto_cipher_setkey(ctx->fallback, key, keylen);

 return ret ? -EINVAL : 0;
}

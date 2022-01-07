
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p8_aes_ctr_ctx {int fallback; int enc_key; } ;
struct crypto_skcipher {int dummy; } ;


 int EINVAL ;
 int aes_p8_set_encrypt_key (int const*,unsigned int,int *) ;
 struct p8_aes_ctr_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_setkey (int ,int const*,unsigned int) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static int p8_aes_ctr_setkey(struct crypto_skcipher *tfm, const u8 *key,
        unsigned int keylen)
{
 struct p8_aes_ctr_ctx *ctx = crypto_skcipher_ctx(tfm);
 int ret;

 preempt_disable();
 pagefault_disable();
 enable_kernel_vsx();
 ret = aes_p8_set_encrypt_key(key, keylen * 8, &ctx->enc_key);
 disable_kernel_vsx();
 pagefault_enable();
 preempt_enable();

 ret |= crypto_skcipher_setkey(ctx->fallback, key, keylen);

 return ret ? -EINVAL : 0;
}

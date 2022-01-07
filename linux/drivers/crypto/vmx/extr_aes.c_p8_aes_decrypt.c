
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p8_aes_ctx {int dec_key; int fallback; } ;
struct crypto_tfm {int dummy; } ;


 int aes_p8_decrypt (int const*,int *,int *) ;
 int crypto_cipher_decrypt_one (int ,int *,int const*) ;
 int crypto_simd_usable () ;
 struct p8_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static void p8_aes_decrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct p8_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 if (!crypto_simd_usable()) {
  crypto_cipher_decrypt_one(ctx->fallback, dst, src);
 } else {
  preempt_disable();
  pagefault_disable();
  enable_kernel_vsx();
  aes_p8_decrypt(src, dst, &ctx->dec_key);
  disable_kernel_vsx();
  pagefault_enable();
  preempt_enable();
 }
}

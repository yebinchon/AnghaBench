
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p8_ghash_desc_ctx {scalar_t__ shash; } ;
struct p8_ghash_ctx {int key; int htable; } ;
typedef int be128 ;


 unsigned int GHASH_BLOCK_SIZE ;
 scalar_t__ crypto_simd_usable () ;
 int crypto_xor (int *,int const*,unsigned int) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int gcm_ghash_p8 (scalar_t__,int ,int const*,unsigned int) ;
 int gf128mul_lle (int *,int *) ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static inline void __ghash_blocks(struct p8_ghash_ctx *ctx,
      struct p8_ghash_desc_ctx *dctx,
      const u8 *src, unsigned int srclen)
{
 if (crypto_simd_usable()) {
  preempt_disable();
  pagefault_disable();
  enable_kernel_vsx();
  gcm_ghash_p8(dctx->shash, ctx->htable,
    src, srclen);
  disable_kernel_vsx();
  pagefault_enable();
  preempt_enable();
 } else {
  while (srclen >= GHASH_BLOCK_SIZE) {
   crypto_xor((u8 *)dctx->shash, src, GHASH_BLOCK_SIZE);
   gf128mul_lle((be128 *)dctx->shash, &ctx->key);
   srclen -= GHASH_BLOCK_SIZE;
   src += GHASH_BLOCK_SIZE;
  }
 }
}

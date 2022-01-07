
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p8_ghash_desc_ctx {scalar_t__ shash; int buffer; } ;
struct p8_ghash_ctx {int key; int htable; } ;
typedef int be128 ;


 int GHASH_BLOCK_SIZE ;
 int GHASH_DIGEST_SIZE ;
 scalar_t__ crypto_simd_usable () ;
 int crypto_xor (int *,int ,int ) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int gcm_ghash_p8 (scalar_t__,int ,int ,int ) ;
 int gf128mul_lle (int *,int *) ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static inline void __ghash_block(struct p8_ghash_ctx *ctx,
     struct p8_ghash_desc_ctx *dctx)
{
 if (crypto_simd_usable()) {
  preempt_disable();
  pagefault_disable();
  enable_kernel_vsx();
  gcm_ghash_p8(dctx->shash, ctx->htable,
    dctx->buffer, GHASH_DIGEST_SIZE);
  disable_kernel_vsx();
  pagefault_enable();
  preempt_enable();
 } else {
  crypto_xor((u8 *)dctx->shash, dctx->buffer, GHASH_BLOCK_SIZE);
  gf128mul_lle((be128 *)dctx->shash, &ctx->key);
 }
}

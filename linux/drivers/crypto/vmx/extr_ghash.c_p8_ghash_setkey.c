
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct p8_ghash_ctx {int key; int htable; } ;
struct crypto_shash {int dummy; } ;


 int EINVAL ;
 unsigned int GHASH_BLOCK_SIZE ;
 int crypto_shash_tfm (struct crypto_shash*) ;
 struct p8_ghash_ctx* crypto_tfm_ctx (int ) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int gcm_init_p8 (int ,int const*) ;
 int memcpy (int *,int const*,unsigned int) ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static int p8_ghash_setkey(struct crypto_shash *tfm, const u8 *key,
      unsigned int keylen)
{
 struct p8_ghash_ctx *ctx = crypto_tfm_ctx(crypto_shash_tfm(tfm));

 if (keylen != GHASH_BLOCK_SIZE)
  return -EINVAL;

 preempt_disable();
 pagefault_disable();
 enable_kernel_vsx();
 gcm_init_p8(ctx->htable, (const u64 *) key);
 disable_kernel_vsx();
 pagefault_enable();
 preempt_enable();

 memcpy(&ctx->key, key, GHASH_BLOCK_SIZE);

 return 0;
}

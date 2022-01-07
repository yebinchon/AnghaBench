
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixp_ctx {int nonce; } ;
struct crypto_ablkcipher {int dummy; } ;


 unsigned int CTR_RFC3686_NONCE_SIZE ;
 int EINVAL ;
 int ablk_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 struct ixp_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int ablk_rfc3686_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
  unsigned int key_len)
{
 struct ixp_ctx *ctx = crypto_ablkcipher_ctx(tfm);


 if (key_len < CTR_RFC3686_NONCE_SIZE)
  return -EINVAL;

 memcpy(ctx->nonce, key + (key_len - CTR_RFC3686_NONCE_SIZE),
   CTR_RFC3686_NONCE_SIZE);

 key_len -= CTR_RFC3686_NONCE_SIZE;
 return ablk_setkey(tfm, key, key_len);
}

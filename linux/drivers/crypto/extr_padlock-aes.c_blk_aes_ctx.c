
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_blkcipher {int dummy; } ;
struct aes_ctx {int dummy; } ;


 struct aes_ctx* aes_ctx_common (int ) ;
 int crypto_blkcipher_ctx (struct crypto_blkcipher*) ;

__attribute__((used)) static inline struct aes_ctx *blk_aes_ctx(struct crypto_blkcipher *tfm)
{
 return aes_ctx_common(crypto_blkcipher_ctx(tfm));
}

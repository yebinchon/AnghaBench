
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;


 int HASH_ALGO_SHA1 ;
 int hash_setkey (struct crypto_ahash*,int const*,unsigned int,int ) ;

__attribute__((used)) static int hmac_sha1_setkey(struct crypto_ahash *tfm,
       const u8 *key, unsigned int keylen)
{
 return hash_setkey(tfm, key, keylen, HASH_ALGO_SHA1);
}

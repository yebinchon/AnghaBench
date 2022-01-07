
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int,int ) ;

__attribute__((used)) static int arc4_skcipher_setkey(struct crypto_skcipher *skcipher,
    const u8 *key, unsigned int keylen)
{
 return skcipher_setkey(skcipher, key, keylen, 0);
}

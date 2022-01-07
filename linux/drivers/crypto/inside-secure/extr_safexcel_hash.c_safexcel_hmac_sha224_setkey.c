
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;


 int SHA256_DIGEST_SIZE ;
 int safexcel_hmac_alg_setkey (struct crypto_ahash*,int const*,unsigned int,char*,int ) ;

__attribute__((used)) static int safexcel_hmac_sha224_setkey(struct crypto_ahash *tfm, const u8 *key,
           unsigned int keylen)
{
 return safexcel_hmac_alg_setkey(tfm, key, keylen, "safexcel-sha224",
     SHA256_DIGEST_SIZE);
}

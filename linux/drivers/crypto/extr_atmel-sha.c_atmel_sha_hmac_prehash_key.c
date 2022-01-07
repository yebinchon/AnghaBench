
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atmel_sha_dev {int dummy; } ;


 int atmel_sha_cpu_hash (struct atmel_sha_dev*,int const*,unsigned int,int,int ) ;
 int atmel_sha_hmac_prehash_key_done ;

__attribute__((used)) static int atmel_sha_hmac_prehash_key(struct atmel_sha_dev *dd,
          const u8 *key, unsigned int keylen)
{
 return atmel_sha_cpu_hash(dd, key, keylen, 1,
      atmel_sha_hmac_prehash_key_done);
}

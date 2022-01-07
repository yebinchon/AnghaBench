
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atmel_sha_hmac_key {unsigned int keylen; int * buffer; int * keydup; int valid; } ;



__attribute__((used)) static inline bool atmel_sha_hmac_key_get(const struct atmel_sha_hmac_key *hkey,
       const u8 **key,
       unsigned int *keylen)
{
 if (!hkey->valid)
  return 0;

 *keylen = hkey->keylen;
 *key = (hkey->keydup) ? hkey->keydup : hkey->buffer;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atmel_sha_hmac_key {int valid; unsigned int keylen; int buffer; int keydup; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atmel_sha_hmac_key_release (struct atmel_sha_hmac_key*) ;
 int kmemdup (int const*,unsigned int,int ) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static inline int atmel_sha_hmac_key_set(struct atmel_sha_hmac_key *hkey,
      const u8 *key,
      unsigned int keylen)
{
 atmel_sha_hmac_key_release(hkey);

 if (keylen > sizeof(hkey->buffer)) {
  hkey->keydup = kmemdup(key, keylen, GFP_KERNEL);
  if (!hkey->keydup)
   return -ENOMEM;

 } else {
  memcpy(hkey->buffer, key, keylen);
 }

 hkey->valid = 1;
 hkey->keylen = keylen;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_hmac_key {int keydup; } ;


 int kfree (int ) ;
 int memset (struct atmel_sha_hmac_key*,int ,int) ;

__attribute__((used)) static inline void atmel_sha_hmac_key_release(struct atmel_sha_hmac_key *hkey)
{
 kfree(hkey->keydup);
 memset(hkey, 0, sizeof(*hkey));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {scalar_t__ key_mac_size; } ;


 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;

__attribute__((used)) static bool crypt_integrity_hmac(struct crypt_config *cc)
{
 return crypt_integrity_aead(cc) && cc->key_mac_size;
}

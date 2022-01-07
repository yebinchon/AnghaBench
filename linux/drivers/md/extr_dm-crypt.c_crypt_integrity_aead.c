
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int cipher_flags; } ;


 int CRYPT_MODE_INTEGRITY_AEAD ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool crypt_integrity_aead(struct crypt_config *cc)
{
 return test_bit(CRYPT_MODE_INTEGRITY_AEAD, &cc->cipher_flags);
}

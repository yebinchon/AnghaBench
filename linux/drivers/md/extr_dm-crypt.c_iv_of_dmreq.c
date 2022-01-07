
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_crypt_request {int dummy; } ;
struct crypt_config {int dummy; } ;


 scalar_t__ ALIGN (unsigned long,scalar_t__) ;
 int any_tfm (struct crypt_config*) ;
 int any_tfm_aead (struct crypt_config*) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;
 scalar_t__ crypto_aead_alignmask (int ) ;
 scalar_t__ crypto_skcipher_alignmask (int ) ;

__attribute__((used)) static u8 *iv_of_dmreq(struct crypt_config *cc,
         struct dm_crypt_request *dmreq)
{
 if (crypt_integrity_aead(cc))
  return (u8 *)ALIGN((unsigned long)(dmreq + 1),
   crypto_aead_alignmask(any_tfm_aead(cc)) + 1);
 else
  return (u8 *)ALIGN((unsigned long)(dmreq + 1),
   crypto_skcipher_alignmask(any_tfm(cc)) + 1);
}

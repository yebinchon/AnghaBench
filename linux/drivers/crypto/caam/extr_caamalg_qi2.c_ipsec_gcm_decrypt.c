
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int assoclen; } ;


 int aead_decrypt (struct aead_request*) ;
 scalar_t__ crypto_ipsec_check_assoclen (int ) ;

__attribute__((used)) static int ipsec_gcm_decrypt(struct aead_request *req)
{
 return crypto_ipsec_check_assoclen(req->assoclen) ? : aead_decrypt(req);
}

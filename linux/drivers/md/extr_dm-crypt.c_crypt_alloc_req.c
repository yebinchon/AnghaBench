
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int dummy; } ;
struct convert_context {int dummy; } ;


 int crypt_alloc_req_aead (struct crypt_config*,struct convert_context*) ;
 int crypt_alloc_req_skcipher (struct crypt_config*,struct convert_context*) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;

__attribute__((used)) static void crypt_alloc_req(struct crypt_config *cc,
       struct convert_context *ctx)
{
 if (crypt_integrity_aead(cc))
  crypt_alloc_req_aead(cc, ctx);
 else
  crypt_alloc_req_skcipher(cc, ctx);
}

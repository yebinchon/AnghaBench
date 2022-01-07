
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spacc_aead {int type; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;


 int crypto_aead_alg (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int spacc_aead_setup (struct aead_request*,int ,int) ;
 struct spacc_aead* to_spacc_aead (int ) ;

__attribute__((used)) static int spacc_aead_encrypt(struct aead_request *req)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct spacc_aead *alg = to_spacc_aead(crypto_aead_alg(aead));

 return spacc_aead_setup(req, alg->type, 1);
}

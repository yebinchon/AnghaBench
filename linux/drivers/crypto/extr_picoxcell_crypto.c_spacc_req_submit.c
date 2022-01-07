
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spacc_req {TYPE_2__* req; } ;
struct crypto_alg {int cra_flags; } ;
struct TYPE_4__ {TYPE_1__* tfm; } ;
struct TYPE_3__ {struct crypto_alg* __crt_alg; } ;


 int CRYPTO_ALG_TYPE_AEAD ;
 int CRYPTO_ALG_TYPE_MASK ;
 int spacc_ablk_submit (struct spacc_req*) ;
 int spacc_aead_submit (struct spacc_req*) ;

__attribute__((used)) static int spacc_req_submit(struct spacc_req *req)
{
 struct crypto_alg *alg = req->req->tfm->__crt_alg;

 if (CRYPTO_ALG_TYPE_AEAD == (CRYPTO_ALG_TYPE_MASK & alg->cra_flags))
  return spacc_aead_submit(req);
 else
  return spacc_ablk_submit(req);
}

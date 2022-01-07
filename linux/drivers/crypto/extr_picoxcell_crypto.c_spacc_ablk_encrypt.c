
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spacc_alg {int type; } ;
struct crypto_tfm {int __crt_alg; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 int spacc_ablk_setup (struct ablkcipher_request*,int ,int) ;
 struct spacc_alg* to_spacc_alg (int ) ;

__attribute__((used)) static int spacc_ablk_encrypt(struct ablkcipher_request *req)
{
 struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(req);
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct spacc_alg *alg = to_spacc_alg(tfm->__crt_alg);

 return spacc_ablk_setup(req, alg->type, 1);
}

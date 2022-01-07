
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct nitrox_kcrypt_request {int dst; } ;


 int kfree (int ) ;
 struct nitrox_kcrypt_request* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static void free_dst_sglist(struct skcipher_request *skreq)
{
 struct nitrox_kcrypt_request *nkreq = skcipher_request_ctx(skreq);

 kfree(nkreq->dst);
}

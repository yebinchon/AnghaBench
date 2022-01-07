
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct crypto_async_request {int dummy; } ;


 int mv_cesa_skcipher_cleanup (struct skcipher_request*) ;
 struct skcipher_request* skcipher_request_cast (struct crypto_async_request*) ;

__attribute__((used)) static inline void
mv_cesa_skcipher_req_cleanup(struct crypto_async_request *req)
{
 struct skcipher_request *skreq = skcipher_request_cast(req);

 mv_cesa_skcipher_cleanup(skreq);
}

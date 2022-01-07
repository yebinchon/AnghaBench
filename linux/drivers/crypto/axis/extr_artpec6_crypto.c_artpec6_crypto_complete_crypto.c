
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;} ;


 int stub1 (struct crypto_async_request*,int ) ;

__attribute__((used)) static void artpec6_crypto_complete_crypto(struct crypto_async_request *req)
{
 req->complete(req, 0);
}

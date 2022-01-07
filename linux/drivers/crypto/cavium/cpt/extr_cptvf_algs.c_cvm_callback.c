
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int) ;} ;


 int stub1 (struct crypto_async_request*,int) ;

__attribute__((used)) static void cvm_callback(u32 status, void *arg)
{
 struct crypto_async_request *req = (struct crypto_async_request *)arg;

 req->complete(req, !status);
}

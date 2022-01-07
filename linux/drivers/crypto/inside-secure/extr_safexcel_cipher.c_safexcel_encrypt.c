
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int base; } ;


 int SAFEXCEL_ENCRYPT ;
 int safexcel_queue_req (int *,int ,int ) ;
 int skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int safexcel_encrypt(struct skcipher_request *req)
{
 return safexcel_queue_req(&req->base, skcipher_request_ctx(req),
   SAFEXCEL_ENCRYPT);
}

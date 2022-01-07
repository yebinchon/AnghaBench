
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_cipher_req {int dummy; } ;
struct aead_request {int base; } ;


 int SAFEXCEL_DECRYPT ;
 struct safexcel_cipher_req* aead_request_ctx (struct aead_request*) ;
 int safexcel_queue_req (int *,struct safexcel_cipher_req*,int ) ;

__attribute__((used)) static int safexcel_aead_decrypt(struct aead_request *req)
{
 struct safexcel_cipher_req *creq = aead_request_ctx(req);

 return safexcel_queue_req(&req->base, creq, SAFEXCEL_DECRYPT);
}

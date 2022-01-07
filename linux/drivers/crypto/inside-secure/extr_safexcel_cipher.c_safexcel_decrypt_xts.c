
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {scalar_t__ cryptlen; int base; } ;


 int EINVAL ;
 int SAFEXCEL_DECRYPT ;
 scalar_t__ XTS_BLOCK_SIZE ;
 int safexcel_queue_req (int *,int ,int ) ;
 int skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int safexcel_decrypt_xts(struct skcipher_request *req)
{
 if (req->cryptlen < XTS_BLOCK_SIZE)
  return -EINVAL;
 return safexcel_queue_req(&req->base, skcipher_request_ctx(req),
      SAFEXCEL_DECRYPT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int SHA_OP_INIT ;
 int atmel_sha_enqueue (struct ahash_request*,int ) ;
 int atmel_sha_init (struct ahash_request*) ;

__attribute__((used)) static int atmel_sha_hmac_init(struct ahash_request *req)
{
 int err;

 err = atmel_sha_init(req);
 if (err)
  return err;

 return atmel_sha_enqueue(req, SHA_OP_INIT);
}

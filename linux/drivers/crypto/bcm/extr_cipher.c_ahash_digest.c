
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int nbytes; } ;


 int __ahash_finup (struct ahash_request*) ;
 int __ahash_init (struct ahash_request*) ;
 int flow_log (char*,int ) ;

__attribute__((used)) static int ahash_digest(struct ahash_request *req)
{
 int err = 0;

 flow_log("ahash_digest() nbytes:%u\n", req->nbytes);


 err = __ahash_init(req);
 if (!err)
  err = __ahash_finup(req);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int nbytes; } ;


 int ahash_update (struct ahash_request*) ;
 int flow_log (char*,int ) ;

__attribute__((used)) static int ahash_hmac_update(struct ahash_request *req)
{
 flow_log("ahash_hmac_update() nbytes:%u\n", req->nbytes);

 if (!req->nbytes)
  return 0;

 return ahash_update(req);
}

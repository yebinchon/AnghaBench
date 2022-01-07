
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int nbytes; } ;


 int ahash_finup (struct ahash_request*) ;
 int flow_log (char*,int ) ;

__attribute__((used)) static int ahash_hmac_finup(struct ahash_request *req)
{
 flow_log("ahash_hmac_finupl() nbytes:%u\n", req->nbytes);

 return ahash_finup(req);
}

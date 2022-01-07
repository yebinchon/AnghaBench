
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int nbytes; } ;


 int ablkcipher_enqueue (struct ablkcipher_request*,int) ;
 int flow_log (char*,int ) ;

__attribute__((used)) static int ablkcipher_encrypt(struct ablkcipher_request *req)
{
 flow_log("ablkcipher_encrypt() nbytes:%u\n", req->nbytes);

 return ablkcipher_enqueue(req, 1);
}

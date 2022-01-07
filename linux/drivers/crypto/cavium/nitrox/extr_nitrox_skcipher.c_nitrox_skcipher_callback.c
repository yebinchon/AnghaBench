
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int EINVAL ;
 int free_dst_sglist (struct skcipher_request*) ;
 int free_src_sglist (struct skcipher_request*) ;
 int pr_err_ratelimited (char*,int) ;
 int skcipher_request_complete (struct skcipher_request*,int) ;

__attribute__((used)) static void nitrox_skcipher_callback(void *arg, int err)
{
 struct skcipher_request *skreq = arg;

 free_src_sglist(skreq);
 free_dst_sglist(skreq);
 if (err) {
  pr_err_ratelimited("request failed status 0x%0x\n", err);
  err = -EINVAL;
 }

 skcipher_request_complete(skreq, err);
}

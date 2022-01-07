
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {scalar_t__ nbytes; } ;


 int sahara_sha_enqueue (struct ahash_request*,int) ;

__attribute__((used)) static int sahara_sha_final(struct ahash_request *req)
{
 req->nbytes = 0;
 return sahara_sha_enqueue(req, 1);
}

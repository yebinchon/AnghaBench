
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int sahara_sha_enqueue (struct ahash_request*,int) ;

__attribute__((used)) static int sahara_sha_finup(struct ahash_request *req)
{
 return sahara_sha_enqueue(req, 1);
}

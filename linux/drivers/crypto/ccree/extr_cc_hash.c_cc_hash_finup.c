
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int cc_do_finup (struct ahash_request*,int) ;

__attribute__((used)) static int cc_hash_finup(struct ahash_request *req)
{
 return cc_do_finup(req, 1);
}

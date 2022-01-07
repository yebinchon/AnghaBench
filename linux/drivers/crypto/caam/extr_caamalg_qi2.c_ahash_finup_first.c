
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int ahash_digest (struct ahash_request*) ;

__attribute__((used)) static int ahash_finup_first(struct ahash_request *req)
{
 return ahash_digest(req);
}

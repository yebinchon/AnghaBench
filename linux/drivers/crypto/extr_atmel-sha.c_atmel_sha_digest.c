
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int atmel_sha_finup (struct ahash_request*) ;
 scalar_t__ atmel_sha_init (struct ahash_request*) ;

__attribute__((used)) static int atmel_sha_digest(struct ahash_request *req)
{
 return atmel_sha_init(req) ?: atmel_sha_finup(req);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int stm32_hash_finup (struct ahash_request*) ;
 scalar_t__ stm32_hash_init (struct ahash_request*) ;

__attribute__((used)) static int stm32_hash_digest(struct ahash_request *req)
{
 return stm32_hash_init(req) ?: stm32_hash_finup(req);
}

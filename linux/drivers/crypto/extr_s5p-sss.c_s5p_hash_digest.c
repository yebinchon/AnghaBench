
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int s5p_hash_finup (struct ahash_request*) ;
 scalar_t__ s5p_hash_init (struct ahash_request*) ;

__attribute__((used)) static int s5p_hash_digest(struct ahash_request *req)
{
 return s5p_hash_init(req) ?: s5p_hash_finup(req);
}

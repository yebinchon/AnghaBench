
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int omap_sham_finup (struct ahash_request*) ;
 scalar_t__ omap_sham_init (struct ahash_request*) ;

__attribute__((used)) static int omap_sham_digest(struct ahash_request *req)
{
 return omap_sham_init(req) ?: omap_sham_finup(req);
}

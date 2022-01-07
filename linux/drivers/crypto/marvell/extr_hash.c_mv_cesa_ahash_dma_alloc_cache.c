
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv_cesa_ahash_dma_req {int cache; int cache_dma; } ;
typedef int gfp_t ;
struct TYPE_4__ {TYPE_1__* dma; } ;
struct TYPE_3__ {int cache_pool; } ;


 int ENOMEM ;
 TYPE_2__* cesa_dev ;
 int dma_pool_alloc (int ,int ,int *) ;

__attribute__((used)) static inline int
mv_cesa_ahash_dma_alloc_cache(struct mv_cesa_ahash_dma_req *req, gfp_t flags)
{
 req->cache = dma_pool_alloc(cesa_dev->dma->cache_pool, flags,
        &req->cache_dma);
 if (!req->cache)
  return -ENOMEM;

 return 0;
}

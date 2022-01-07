
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv_cesa_ahash_dma_req {int cache_dma; int cache; } ;
struct TYPE_4__ {TYPE_1__* dma; } ;
struct TYPE_3__ {int cache_pool; } ;


 TYPE_2__* cesa_dev ;
 int dma_pool_free (int ,int ,int ) ;

__attribute__((used)) static inline void
mv_cesa_ahash_dma_free_cache(struct mv_cesa_ahash_dma_req *req)
{
 if (!req->cache)
  return;

 dma_pool_free(cesa_dev->dma->cache_pool, req->cache,
        req->cache_dma);
}

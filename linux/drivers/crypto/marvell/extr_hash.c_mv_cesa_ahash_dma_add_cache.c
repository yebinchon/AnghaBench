
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_cesa_tdma_chain {int dummy; } ;
struct mv_cesa_ahash_dma_req {int cache_dma; int cache; } ;
struct TYPE_2__ {struct mv_cesa_ahash_dma_req dma; } ;
struct mv_cesa_ahash_req {int cache_ptr; int cache; TYPE_1__ req; } ;
typedef int gfp_t ;


 int CESA_SA_DATA_SRAM_OFFSET ;
 int CESA_TDMA_DST_IN_SRAM ;
 int memcpy (int ,int ,int ) ;
 int mv_cesa_ahash_dma_alloc_cache (struct mv_cesa_ahash_dma_req*,int ) ;
 int mv_cesa_dma_add_data_transfer (struct mv_cesa_tdma_chain*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
mv_cesa_ahash_dma_add_cache(struct mv_cesa_tdma_chain *chain,
       struct mv_cesa_ahash_req *creq,
       gfp_t flags)
{
 struct mv_cesa_ahash_dma_req *ahashdreq = &creq->req.dma;
 int ret;

 if (!creq->cache_ptr)
  return 0;

 ret = mv_cesa_ahash_dma_alloc_cache(ahashdreq, flags);
 if (ret)
  return ret;

 memcpy(ahashdreq->cache, creq->cache, creq->cache_ptr);

 return mv_cesa_dma_add_data_transfer(chain,
          CESA_SA_DATA_SRAM_OFFSET,
          ahashdreq->cache_dma,
          creq->cache_ptr,
          CESA_TDMA_DST_IN_SRAM,
          flags);
}

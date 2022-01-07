
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv_cesa_ahash_dma_req {scalar_t__ padding; int padding_dma; } ;
typedef int gfp_t ;
struct TYPE_4__ {TYPE_1__* dma; } ;
struct TYPE_3__ {int padding_pool; } ;


 int ENOMEM ;
 TYPE_2__* cesa_dev ;
 scalar_t__ dma_pool_alloc (int ,int ,int *) ;

__attribute__((used)) static int mv_cesa_ahash_dma_alloc_padding(struct mv_cesa_ahash_dma_req *req,
        gfp_t flags)
{
 if (req->padding)
  return 0;

 req->padding = dma_pool_alloc(cesa_dev->dma->padding_pool, flags,
          &req->padding_dma);
 if (!req->padding)
  return -ENOMEM;

 return 0;
}

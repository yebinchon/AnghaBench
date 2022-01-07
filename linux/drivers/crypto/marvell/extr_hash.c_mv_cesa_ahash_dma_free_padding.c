
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv_cesa_ahash_dma_req {int * padding; int padding_dma; } ;
struct TYPE_4__ {TYPE_1__* dma; } ;
struct TYPE_3__ {int padding_pool; } ;


 TYPE_2__* cesa_dev ;
 int dma_pool_free (int ,int *,int ) ;

__attribute__((used)) static void mv_cesa_ahash_dma_free_padding(struct mv_cesa_ahash_dma_req *req)
{
 if (!req->padding)
  return;

 dma_pool_free(cesa_dev->dma->padding_pool, req->padding,
        req->padding_dma);
 req->padding = ((void*)0);
}

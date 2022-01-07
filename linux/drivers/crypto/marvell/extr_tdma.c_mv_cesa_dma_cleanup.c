
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mv_cesa_tdma_desc {scalar_t__ flags; int cur_dma; struct mv_cesa_tdma_desc* next; int src; struct mv_cesa_tdma_desc* op; } ;
struct TYPE_5__ {int * last; struct mv_cesa_tdma_desc* first; } ;
struct mv_cesa_req {TYPE_2__ chain; } ;
struct TYPE_6__ {TYPE_1__* dma; } ;
struct TYPE_4__ {int tdma_desc_pool; int op_pool; } ;


 scalar_t__ CESA_TDMA_OP ;
 scalar_t__ CESA_TDMA_TYPE_MSK ;
 TYPE_3__* cesa_dev ;
 int dma_pool_free (int ,struct mv_cesa_tdma_desc*,int ) ;
 int le32_to_cpu (int ) ;

void mv_cesa_dma_cleanup(struct mv_cesa_req *dreq)
{
 struct mv_cesa_tdma_desc *tdma;

 for (tdma = dreq->chain.first; tdma;) {
  struct mv_cesa_tdma_desc *old_tdma = tdma;
  u32 type = tdma->flags & CESA_TDMA_TYPE_MSK;

  if (type == CESA_TDMA_OP)
   dma_pool_free(cesa_dev->dma->op_pool, tdma->op,
          le32_to_cpu(tdma->src));

  tdma = tdma->next;
  dma_pool_free(cesa_dev->dma->tdma_desc_pool, old_tdma,
         old_tdma->cur_dma);
 }

 dreq->chain.first = ((void*)0);
 dreq->chain.last = ((void*)0);
}

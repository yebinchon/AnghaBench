
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {TYPE_3__* sges; TYPE_3__* wrs; } ;
struct rdma_rw_ctx {int type; int nr_ops; TYPE_1__ map; TYPE_3__* reg; } ;
struct ib_qp {TYPE_2__* pd; int rdma_mrs; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int dma_device; } ;
struct TYPE_7__ {int mr; } ;
struct TYPE_6__ {TYPE_4__* device; } ;


 int BUG () ;



 int ib_dma_unmap_sg (TYPE_4__*,struct scatterlist*,int ,int) ;
 int ib_mr_pool_put (struct ib_qp*,int *,int ) ;
 scalar_t__ is_pci_p2pdma_page (int ) ;
 int kfree (TYPE_3__*) ;
 int pci_p2pdma_unmap_sg (int ,struct scatterlist*,int ,int) ;
 int sg_page (struct scatterlist*) ;

void rdma_rw_ctx_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
  struct scatterlist *sg, u32 sg_cnt, enum dma_data_direction dir)
{
 int i;

 switch (ctx->type) {
 case 130:
  for (i = 0; i < ctx->nr_ops; i++)
   ib_mr_pool_put(qp, &qp->rdma_mrs, ctx->reg[i].mr);
  kfree(ctx->reg);
  break;
 case 129:
  kfree(ctx->map.wrs);
  kfree(ctx->map.sges);
  break;
 case 128:
  break;
 default:
  BUG();
  break;
 }

 if (is_pci_p2pdma_page(sg_page(sg)))
  pci_p2pdma_unmap_sg(qp->pd->device->dma_device, sg,
        sg_cnt, dir);
 else
  ib_dma_unmap_sg(qp->pd->device, sg, sg_cnt, dir);
}

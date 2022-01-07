
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wqe_cnt; } ;
struct mlx4_ib_qp {TYPE_2__* sqp_proxy_rcv; TYPE_1__ rq; } ;
struct mlx4_ib_proxy_sqp_hdr {int dummy; } ;
struct mlx4_ib_buf {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_7__ {struct TYPE_7__* addr; int map; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ib_dma_map_single (struct ib_device*,TYPE_2__*,int,int ) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int ) ;
 int ib_dma_unmap_single (struct ib_device*,int ,int,int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (int,int ) ;
 TYPE_2__* kmalloc_array (int,int,int ) ;

__attribute__((used)) static int alloc_proxy_bufs(struct ib_device *dev, struct mlx4_ib_qp *qp)
{
 int i;

 qp->sqp_proxy_rcv =
  kmalloc_array(qp->rq.wqe_cnt, sizeof(struct mlx4_ib_buf),
         GFP_KERNEL);
 if (!qp->sqp_proxy_rcv)
  return -ENOMEM;
 for (i = 0; i < qp->rq.wqe_cnt; i++) {
  qp->sqp_proxy_rcv[i].addr =
   kmalloc(sizeof (struct mlx4_ib_proxy_sqp_hdr),
    GFP_KERNEL);
  if (!qp->sqp_proxy_rcv[i].addr)
   goto err;
  qp->sqp_proxy_rcv[i].map =
   ib_dma_map_single(dev, qp->sqp_proxy_rcv[i].addr,
       sizeof (struct mlx4_ib_proxy_sqp_hdr),
       DMA_FROM_DEVICE);
  if (ib_dma_mapping_error(dev, qp->sqp_proxy_rcv[i].map)) {
   kfree(qp->sqp_proxy_rcv[i].addr);
   goto err;
  }
 }
 return 0;

err:
 while (i > 0) {
  --i;
  ib_dma_unmap_single(dev, qp->sqp_proxy_rcv[i].map,
        sizeof (struct mlx4_ib_proxy_sqp_hdr),
        DMA_FROM_DEVICE);
  kfree(qp->sqp_proxy_rcv[i].addr);
 }
 kfree(qp->sqp_proxy_rcv);
 qp->sqp_proxy_rcv = ((void*)0);
 return -ENOMEM;
}

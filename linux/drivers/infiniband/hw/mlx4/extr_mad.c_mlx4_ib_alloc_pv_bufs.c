
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_tunnel_mad {int dummy; } ;
struct mlx4_rcv_tunnel_mad {int dummy; } ;
struct mlx4_mad_snd_buf {int dummy; } ;
struct mlx4_mad_rcv_buf {int dummy; } ;
struct mlx4_ib_tun_tx_buf {int dummy; } ;
struct mlx4_ib_demux_pv_qp {int proxy_qpt; TYPE_2__* ring; TYPE_2__* tx_ring; scalar_t__ tx_ix_tail; scalar_t__ tx_ix_head; int tx_lock; } ;
struct mlx4_ib_demux_pv_ctx {int ib_dev; struct mlx4_ib_demux_pv_qp* qp; } ;
struct mlx4_ib_buf {int dummy; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_4__ {TYPE_2__* addr; void* map; } ;
struct TYPE_5__ {struct TYPE_5__* addr; void* map; TYPE_1__ buf; int * ah; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_QPT_GSI ;
 int MLX4_NUM_TUNNEL_BUFS ;
 void* ib_dma_map_single (int ,TYPE_2__*,int,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,void*) ;
 int ib_dma_unmap_single (int ,void*,int,int ) ;
 void* kcalloc (int,int,int ) ;
 int kfree (TYPE_2__*) ;
 void* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mlx4_ib_alloc_pv_bufs(struct mlx4_ib_demux_pv_ctx *ctx,
     enum ib_qp_type qp_type, int is_tun)
{
 int i;
 struct mlx4_ib_demux_pv_qp *tun_qp;
 int rx_buf_size, tx_buf_size;

 if (qp_type > IB_QPT_GSI)
  return -EINVAL;

 tun_qp = &ctx->qp[qp_type];

 tun_qp->ring = kcalloc(MLX4_NUM_TUNNEL_BUFS,
          sizeof(struct mlx4_ib_buf),
          GFP_KERNEL);
 if (!tun_qp->ring)
  return -ENOMEM;

 tun_qp->tx_ring = kcalloc(MLX4_NUM_TUNNEL_BUFS,
      sizeof (struct mlx4_ib_tun_tx_buf),
      GFP_KERNEL);
 if (!tun_qp->tx_ring) {
  kfree(tun_qp->ring);
  tun_qp->ring = ((void*)0);
  return -ENOMEM;
 }

 if (is_tun) {
  rx_buf_size = sizeof (struct mlx4_tunnel_mad);
  tx_buf_size = sizeof (struct mlx4_rcv_tunnel_mad);
 } else {
  rx_buf_size = sizeof (struct mlx4_mad_rcv_buf);
  tx_buf_size = sizeof (struct mlx4_mad_snd_buf);
 }

 for (i = 0; i < MLX4_NUM_TUNNEL_BUFS; i++) {
  tun_qp->ring[i].addr = kmalloc(rx_buf_size, GFP_KERNEL);
  if (!tun_qp->ring[i].addr)
   goto err;
  tun_qp->ring[i].map = ib_dma_map_single(ctx->ib_dev,
       tun_qp->ring[i].addr,
       rx_buf_size,
       DMA_FROM_DEVICE);
  if (ib_dma_mapping_error(ctx->ib_dev, tun_qp->ring[i].map)) {
   kfree(tun_qp->ring[i].addr);
   goto err;
  }
 }

 for (i = 0; i < MLX4_NUM_TUNNEL_BUFS; i++) {
  tun_qp->tx_ring[i].buf.addr =
   kmalloc(tx_buf_size, GFP_KERNEL);
  if (!tun_qp->tx_ring[i].buf.addr)
   goto tx_err;
  tun_qp->tx_ring[i].buf.map =
   ib_dma_map_single(ctx->ib_dev,
       tun_qp->tx_ring[i].buf.addr,
       tx_buf_size,
       DMA_TO_DEVICE);
  if (ib_dma_mapping_error(ctx->ib_dev,
      tun_qp->tx_ring[i].buf.map)) {
   kfree(tun_qp->tx_ring[i].buf.addr);
   goto tx_err;
  }
  tun_qp->tx_ring[i].ah = ((void*)0);
 }
 spin_lock_init(&tun_qp->tx_lock);
 tun_qp->tx_ix_head = 0;
 tun_qp->tx_ix_tail = 0;
 tun_qp->proxy_qpt = qp_type;

 return 0;

tx_err:
 while (i > 0) {
  --i;
  ib_dma_unmap_single(ctx->ib_dev, tun_qp->tx_ring[i].buf.map,
        tx_buf_size, DMA_TO_DEVICE);
  kfree(tun_qp->tx_ring[i].buf.addr);
 }
 i = MLX4_NUM_TUNNEL_BUFS;
err:
 while (i > 0) {
  --i;
  ib_dma_unmap_single(ctx->ib_dev, tun_qp->ring[i].map,
        rx_buf_size, DMA_FROM_DEVICE);
  kfree(tun_qp->ring[i].addr);
 }
 kfree(tun_qp->tx_ring);
 tun_qp->tx_ring = ((void*)0);
 kfree(tun_qp->ring);
 tun_qp->ring = ((void*)0);
 return -ENOMEM;
}

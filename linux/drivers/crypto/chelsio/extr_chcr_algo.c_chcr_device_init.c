
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ntxq; int nrxq; int nchan; } ;
struct TYPE_4__ {int tx_channel_id; int lock_chcr_dev; } ;
struct uld_ctx {TYPE_1__ lldi; TYPE_2__ dev; } ;
struct chcr_context {int tx_chan_id; int rx_qidx; int tx_qidx; int pci_chan_id; TYPE_2__* dev; } ;


 int ENXIO ;
 struct uld_ctx* assign_chcr_device () ;
 int pr_err (char*) ;
 unsigned int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int chcr_device_init(struct chcr_context *ctx)
{
 struct uld_ctx *u_ctx = ((void*)0);
 unsigned int id;
 int txq_perchan, txq_idx, ntxq;
 int err = 0, rxq_perchan, rxq_idx;

 id = smp_processor_id();
 if (!ctx->dev) {
  u_ctx = assign_chcr_device();
  if (!u_ctx) {
   err = -ENXIO;
   pr_err("chcr device assignment fails\n");
   goto out;
  }
  ctx->dev = &u_ctx->dev;
  ntxq = u_ctx->lldi.ntxq;
  rxq_perchan = u_ctx->lldi.nrxq / u_ctx->lldi.nchan;
  txq_perchan = ntxq / u_ctx->lldi.nchan;
  spin_lock(&ctx->dev->lock_chcr_dev);
  ctx->tx_chan_id = ctx->dev->tx_channel_id;
  ctx->dev->tx_channel_id = !ctx->dev->tx_channel_id;
  spin_unlock(&ctx->dev->lock_chcr_dev);
  rxq_idx = ctx->tx_chan_id * rxq_perchan;
  rxq_idx += id % rxq_perchan;
  txq_idx = ctx->tx_chan_id * txq_perchan;
  txq_idx += id % txq_perchan;
  ctx->rx_qidx = rxq_idx;
  ctx->tx_qidx = txq_idx;





  ctx->pci_chan_id = txq_idx / txq_perchan;
 }
out:
 return err;
}

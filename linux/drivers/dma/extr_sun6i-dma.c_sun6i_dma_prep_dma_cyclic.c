
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct dma_slave_config {void* src_addr; void* dst_addr; } ;
struct sun6i_vchan {int cyclic; int vc; int port; struct dma_slave_config cfg; } ;
struct sun6i_dma_lli {size_t len; struct sun6i_dma_lli* v_lli_next; int p_lli_next; void* cfg; void* dst; void* src; int para; } ;
struct TYPE_3__ {int dev; } ;
struct sun6i_dma_dev {int pool; TYPE_2__* cfg; TYPE_1__ slave; } ;
struct sun6i_desc {struct sun6i_dma_lli* v_lli; int vd; int p_lli; } ;
struct dma_chan {int device; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef void* dma_addr_t ;
struct TYPE_4__ {int (* set_mode ) (void**,int ,int ) ;int (* set_drq ) (void**,int ,int ) ;} ;


 int DMA_MEM_TO_DEV ;
 int DRQ_SDRAM ;
 int GFP_NOWAIT ;
 int IO_MODE ;
 int LINEAR_MODE ;
 int NORMAL_WAIT ;
 int chan2dev (struct dma_chan*) ;
 int dev_err (int ,char*) ;
 struct sun6i_dma_lli* dma_pool_alloc (int ,int ,void**) ;
 int dma_pool_free (int ,struct sun6i_dma_lli*,int ) ;
 int kfree (struct sun6i_desc*) ;
 struct sun6i_desc* kzalloc (int,int ) ;
 int set_config (struct sun6i_dma_dev*,struct dma_slave_config*,int,void**) ;
 int stub1 (void**,int ,int ) ;
 int stub2 (void**,int ,int ) ;
 int stub3 (void**,int ,int ) ;
 int stub4 (void**,int ,int ) ;
 struct sun6i_dma_lli* sun6i_dma_lli_add (struct sun6i_dma_lli*,struct sun6i_dma_lli*,void*,struct sun6i_desc*) ;
 struct sun6i_dma_dev* to_sun6i_dma_dev (int ) ;
 struct sun6i_vchan* to_sun6i_vchan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;
 int virt_to_phys (struct sun6i_dma_lli*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *sun6i_dma_prep_dma_cyclic(
     struct dma_chan *chan,
     dma_addr_t buf_addr,
     size_t buf_len,
     size_t period_len,
     enum dma_transfer_direction dir,
     unsigned long flags)
{
 struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
 struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 struct dma_slave_config *sconfig = &vchan->cfg;
 struct sun6i_dma_lli *v_lli, *prev = ((void*)0);
 struct sun6i_desc *txd;
 dma_addr_t p_lli;
 u32 lli_cfg;
 unsigned int i, periods = buf_len / period_len;
 int ret;

 ret = set_config(sdev, sconfig, dir, &lli_cfg);
 if (ret) {
  dev_err(chan2dev(chan), "Invalid DMA configuration\n");
  return ((void*)0);
 }

 txd = kzalloc(sizeof(*txd), GFP_NOWAIT);
 if (!txd)
  return ((void*)0);

 for (i = 0; i < periods; i++) {
  v_lli = dma_pool_alloc(sdev->pool, GFP_NOWAIT, &p_lli);
  if (!v_lli) {
   dev_err(sdev->slave.dev, "Failed to alloc lli memory\n");
   goto err_lli_free;
  }

  v_lli->len = period_len;
  v_lli->para = NORMAL_WAIT;

  if (dir == DMA_MEM_TO_DEV) {
   v_lli->src = buf_addr + period_len * i;
   v_lli->dst = sconfig->dst_addr;
   v_lli->cfg = lli_cfg;
   sdev->cfg->set_drq(&v_lli->cfg, DRQ_SDRAM, vchan->port);
   sdev->cfg->set_mode(&v_lli->cfg, LINEAR_MODE, IO_MODE);
  } else {
   v_lli->src = sconfig->src_addr;
   v_lli->dst = buf_addr + period_len * i;
   v_lli->cfg = lli_cfg;
   sdev->cfg->set_drq(&v_lli->cfg, vchan->port, DRQ_SDRAM);
   sdev->cfg->set_mode(&v_lli->cfg, IO_MODE, LINEAR_MODE);
  }

  prev = sun6i_dma_lli_add(prev, v_lli, p_lli, txd);
 }

 prev->p_lli_next = txd->p_lli;

 vchan->cyclic = 1;

 return vchan_tx_prep(&vchan->vc, &txd->vd, flags);

err_lli_free:
 for (prev = txd->v_lli; prev; prev = prev->v_lli_next)
  dma_pool_free(sdev->pool, prev, virt_to_phys(prev));
 kfree(txd);
 return ((void*)0);
}

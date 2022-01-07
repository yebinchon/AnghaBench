
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_adma_desc {size_t buf_len; size_t period_len; size_t num_periods; int vd; } ;
struct tegra_adma_chan {int vc; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int dma_addr_t ;


 size_t ADMA_CH_TC_COUNT_MASK ;
 int GFP_NOWAIT ;
 int IS_ALIGNED (int ,int) ;
 int dev_err (int ,char*) ;
 int kfree (struct tegra_adma_desc*) ;
 struct tegra_adma_desc* kzalloc (int,int ) ;
 int tdc2dev (struct tegra_adma_chan*) ;
 scalar_t__ tegra_adma_set_xfer_params (struct tegra_adma_chan*,struct tegra_adma_desc*,int ,int) ;
 struct tegra_adma_chan* to_tegra_adma_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *tegra_adma_prep_dma_cyclic(
 struct dma_chan *dc, dma_addr_t buf_addr, size_t buf_len,
 size_t period_len, enum dma_transfer_direction direction,
 unsigned long flags)
{
 struct tegra_adma_chan *tdc = to_tegra_adma_chan(dc);
 struct tegra_adma_desc *desc = ((void*)0);

 if (!buf_len || !period_len || period_len > ADMA_CH_TC_COUNT_MASK) {
  dev_err(tdc2dev(tdc), "invalid buffer/period len\n");
  return ((void*)0);
 }

 if (buf_len % period_len) {
  dev_err(tdc2dev(tdc), "buf_len not a multiple of period_len\n");
  return ((void*)0);
 }

 if (!IS_ALIGNED(buf_addr, 4)) {
  dev_err(tdc2dev(tdc), "invalid buffer alignment\n");
  return ((void*)0);
 }

 desc = kzalloc(sizeof(*desc), GFP_NOWAIT);
 if (!desc)
  return ((void*)0);

 desc->buf_len = buf_len;
 desc->period_len = period_len;
 desc->num_periods = buf_len / period_len;

 if (tegra_adma_set_xfer_params(tdc, desc, buf_addr, direction)) {
  kfree(desc);
  return ((void*)0);
 }

 return vchan_tx_prep(&tdc->vc, &desc->vd, flags);
}

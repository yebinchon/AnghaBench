
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int tx; int node; } ;
struct tegra_adma_chan_regs {int tc; int ctrl; int src_addr; int trg_addr; int fifo_ctrl; int config; } ;
struct tegra_adma_desc {struct tegra_adma_chan_regs ch_regs; } ;
struct tegra_adma_chan {struct tegra_adma_desc* desc; scalar_t__ tx_buf_count; scalar_t__ tx_buf_pos; int vc; } ;


 int ADMA_CH_CMD ;
 int ADMA_CH_CONFIG ;
 int ADMA_CH_CTRL ;
 int ADMA_CH_FIFO_CTRL ;
 int ADMA_CH_LOWER_SRC_ADDR ;
 int ADMA_CH_LOWER_TRG_ADDR ;
 int ADMA_CH_TC ;
 int dev_warn (int ,char*) ;
 int list_del (int *) ;
 int tdc2dev (struct tegra_adma_chan*) ;
 int tdma_ch_write (struct tegra_adma_chan*,int ,int) ;
 struct tegra_adma_desc* to_tegra_adma_desc (int *) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void tegra_adma_start(struct tegra_adma_chan *tdc)
{
 struct virt_dma_desc *vd = vchan_next_desc(&tdc->vc);
 struct tegra_adma_chan_regs *ch_regs;
 struct tegra_adma_desc *desc;

 if (!vd)
  return;

 list_del(&vd->node);

 desc = to_tegra_adma_desc(&vd->tx);

 if (!desc) {
  dev_warn(tdc2dev(tdc), "unable to start DMA, no descriptor\n");
  return;
 }

 ch_regs = &desc->ch_regs;

 tdc->tx_buf_pos = 0;
 tdc->tx_buf_count = 0;
 tdma_ch_write(tdc, ADMA_CH_TC, ch_regs->tc);
 tdma_ch_write(tdc, ADMA_CH_CTRL, ch_regs->ctrl);
 tdma_ch_write(tdc, ADMA_CH_LOWER_SRC_ADDR, ch_regs->src_addr);
 tdma_ch_write(tdc, ADMA_CH_LOWER_TRG_ADDR, ch_regs->trg_addr);
 tdma_ch_write(tdc, ADMA_CH_FIFO_CTRL, ch_regs->fifo_ctrl);
 tdma_ch_write(tdc, ADMA_CH_CONFIG, ch_regs->config);


 tdma_ch_write(tdc, ADMA_CH_CMD, 1);

 tdc->desc = desc;
}

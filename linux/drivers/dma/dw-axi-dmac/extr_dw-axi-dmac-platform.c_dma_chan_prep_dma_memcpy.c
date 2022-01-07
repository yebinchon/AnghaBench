
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct TYPE_11__ {int phys; } ;
struct TYPE_12__ {TYPE_5__ tx; } ;
struct TYPE_10__ {void* ctl_lo; void* ctl_hi; void* block_ts_lo; } ;
struct axi_dma_desc {TYPE_6__ vd; int xfer_list; TYPE_4__ lli; } ;
struct axi_dma_chan {size_t id; int vc; TYPE_3__* chip; } ;
typedef size_t dma_addr_t ;
struct TYPE_9__ {TYPE_2__* dw; } ;
struct TYPE_8__ {TYPE_1__* hdata; } ;
struct TYPE_7__ {size_t* block_size; size_t axi_rw_burst_len; scalar_t__ restrict_axi_burst_len; } ;


 size_t CH_CTL_H_ARLEN_EN ;
 size_t CH_CTL_H_ARLEN_POS ;
 size_t CH_CTL_H_AWLEN_EN ;
 size_t CH_CTL_H_AWLEN_POS ;
 size_t CH_CTL_H_LLI_VALID ;
 size_t CH_CTL_L_DST_INC_POS ;
 size_t CH_CTL_L_DST_MSIZE_POS ;
 size_t CH_CTL_L_DST_WIDTH_POS ;
 size_t CH_CTL_L_SRC_INC_POS ;
 size_t CH_CTL_L_SRC_MSIZE_POS ;
 size_t CH_CTL_L_SRC_WIDTH_POS ;
 size_t DWAXIDMAC_BURST_TRANS_LEN_4 ;
 size_t DWAXIDMAC_CH_CTL_L_INC ;
 size_t axi_chan_get_xfer_width (struct axi_dma_chan*,size_t,size_t,size_t) ;
 int axi_chan_name (struct axi_dma_chan*) ;
 struct axi_dma_desc* axi_desc_get (struct axi_dma_chan*) ;
 int axi_desc_put (struct axi_dma_desc*) ;
 int chan2dev (struct axi_dma_chan*) ;
 void* cpu_to_le32 (size_t) ;
 struct axi_dma_chan* dchan_to_axi_dma_chan (struct dma_chan*) ;
 int dev_dbg (int ,char*,int ,size_t*,size_t*,size_t,unsigned long) ;
 int list_add_tail (int *,int *) ;
 int set_desc_dest_master (struct axi_dma_desc*) ;
 int set_desc_last (struct axi_dma_desc*) ;
 int set_desc_src_master (struct axi_dma_desc*) ;
 scalar_t__ unlikely (int) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,TYPE_6__*,unsigned long) ;
 int write_desc_dar (struct axi_dma_desc*,size_t) ;
 int write_desc_llp (struct axi_dma_desc*,int) ;
 int write_desc_sar (struct axi_dma_desc*,size_t) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
dma_chan_prep_dma_memcpy(struct dma_chan *dchan, dma_addr_t dst_adr,
    dma_addr_t src_adr, size_t len, unsigned long flags)
{
 struct axi_dma_desc *first = ((void*)0), *desc = ((void*)0), *prev = ((void*)0);
 struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);
 size_t block_ts, max_block_ts, xfer_len;
 u32 xfer_width, reg;
 u8 lms = 0;

 dev_dbg(chan2dev(chan), "%s: memcpy: src: %pad dst: %pad length: %zd flags: %#lx",
  axi_chan_name(chan), &src_adr, &dst_adr, len, flags);

 max_block_ts = chan->chip->dw->hdata->block_size[chan->id];

 while (len) {
  xfer_len = len;






  xfer_width = axi_chan_get_xfer_width(chan, src_adr, dst_adr, xfer_len);






  block_ts = xfer_len >> xfer_width;
  if (block_ts > max_block_ts) {
   block_ts = max_block_ts;
   xfer_len = max_block_ts << xfer_width;
  }

  desc = axi_desc_get(chan);
  if (unlikely(!desc))
   goto err_desc_get;

  write_desc_sar(desc, src_adr);
  write_desc_dar(desc, dst_adr);
  desc->lli.block_ts_lo = cpu_to_le32(block_ts - 1);

  reg = CH_CTL_H_LLI_VALID;
  if (chan->chip->dw->hdata->restrict_axi_burst_len) {
   u32 burst_len = chan->chip->dw->hdata->axi_rw_burst_len;

   reg |= (CH_CTL_H_ARLEN_EN |
    burst_len << CH_CTL_H_ARLEN_POS |
    CH_CTL_H_AWLEN_EN |
    burst_len << CH_CTL_H_AWLEN_POS);
  }
  desc->lli.ctl_hi = cpu_to_le32(reg);

  reg = (DWAXIDMAC_BURST_TRANS_LEN_4 << CH_CTL_L_DST_MSIZE_POS |
         DWAXIDMAC_BURST_TRANS_LEN_4 << CH_CTL_L_SRC_MSIZE_POS |
         xfer_width << CH_CTL_L_DST_WIDTH_POS |
         xfer_width << CH_CTL_L_SRC_WIDTH_POS |
         DWAXIDMAC_CH_CTL_L_INC << CH_CTL_L_DST_INC_POS |
         DWAXIDMAC_CH_CTL_L_INC << CH_CTL_L_SRC_INC_POS);
  desc->lli.ctl_lo = cpu_to_le32(reg);

  set_desc_src_master(desc);
  set_desc_dest_master(desc);


  if (!first) {
   first = desc;
  } else {
   list_add_tail(&desc->xfer_list, &first->xfer_list);
   write_desc_llp(prev, desc->vd.tx.phys | lms);
  }
  prev = desc;


  len -= xfer_len;
  dst_adr += xfer_len;
  src_adr += xfer_len;
 }


 if (unlikely(!first))
  return ((void*)0);


 set_desc_last(desc);

 return vchan_tx_prep(&chan->vc, &first->vd, flags);

err_desc_get:
 if (first)
  axi_desc_put(first);
 return ((void*)0);
}

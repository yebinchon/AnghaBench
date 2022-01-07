
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int channels; int copy_align; } ;
struct xilinx_dma_device {scalar_t__ flush_on_fsync; int nr_channels; int dev; struct xilinx_dma_chan** chan; TYPE_4__ common; TYPE_2__* dma_config; int ext_addr; } ;
struct TYPE_7__ {int device_node; TYPE_4__* device; } ;
struct TYPE_5__ {int park; int vflip_en; } ;
struct xilinx_dma_chan {int desc_pendingcount; int idle; int id; int tdest; int flush_on_fsync; int has_vflip; int has_sg; TYPE_3__ common; int tasklet; int dev; void* stop_transfer; int start_transfer; int irq; TYPE_1__ config; int desc_offset; int ctrl_offset; int direction; void* genlock; int free_seg_list; int active_list; int done_list; int pending_list; int lock; int ext_addr; struct xilinx_dma_device* xdev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {scalar_t__ dmatype; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 scalar_t__ XDMA_TYPE_AXIDMA ;
 scalar_t__ XDMA_TYPE_CDMA ;
 scalar_t__ XDMA_TYPE_VDMA ;
 int XILINX_DMA_DMASR_SG_MASK ;
 scalar_t__ XILINX_DMA_FLUSH_BOTH ;
 scalar_t__ XILINX_DMA_FLUSH_MM2S ;
 scalar_t__ XILINX_DMA_FLUSH_S2MM ;
 int XILINX_DMA_MM2S_CTRL_OFFSET ;
 int XILINX_DMA_REG_DMASR ;
 int XILINX_DMA_S2MM_CTRL_OFFSET ;
 int XILINX_VDMA_ENABLE_VERTICAL_FLIP ;
 int XILINX_VDMA_MM2S_DESC_OFFSET ;
 int XILINX_VDMA_REG_ENABLE_VERTICAL_FLIP ;
 int XILINX_VDMA_S2MM_DESC_OFFSET ;
 int dev_dbg (int ,char*,int,char*) ;
 int dev_err (int ,char*,...) ;
 struct xilinx_dma_chan* devm_kzalloc (int ,int,int ) ;
 int dma_ctrl_read (struct xilinx_dma_chan*,int ) ;
 int dma_read (struct xilinx_dma_chan*,int ) ;
 int fls (int) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int request_irq (int ,int ,int ,char*,struct xilinx_dma_chan*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int xilinx_cdma_start_transfer ;
 void* xilinx_cdma_stop_transfer ;
 int xilinx_dma_chan_reset (struct xilinx_dma_chan*) ;
 int xilinx_dma_do_tasklet ;
 int xilinx_dma_irq_handler ;
 int xilinx_dma_start_transfer ;
 void* xilinx_dma_stop_transfer ;
 int xilinx_vdma_start_transfer ;

__attribute__((used)) static int xilinx_dma_chan_probe(struct xilinx_dma_device *xdev,
      struct device_node *node, int chan_id)
{
 struct xilinx_dma_chan *chan;
 bool has_dre = 0;
 u32 value, width;
 int err;


 chan = devm_kzalloc(xdev->dev, sizeof(*chan), GFP_KERNEL);
 if (!chan)
  return -ENOMEM;

 chan->dev = xdev->dev;
 chan->xdev = xdev;
 chan->desc_pendingcount = 0x0;
 chan->ext_addr = xdev->ext_addr;





 chan->idle = 1;

 spin_lock_init(&chan->lock);
 INIT_LIST_HEAD(&chan->pending_list);
 INIT_LIST_HEAD(&chan->done_list);
 INIT_LIST_HEAD(&chan->active_list);
 INIT_LIST_HEAD(&chan->free_seg_list);


 has_dre = of_property_read_bool(node, "xlnx,include-dre");

 chan->genlock = of_property_read_bool(node, "xlnx,genlock-mode");

 err = of_property_read_u32(node, "xlnx,datawidth", &value);
 if (err) {
  dev_err(xdev->dev, "missing xlnx,datawidth property\n");
  return err;
 }
 width = value >> 3;


 if (width > 8)
  has_dre = 0;

 if (!has_dre)
  xdev->common.copy_align = fls(width - 1);

 if (of_device_is_compatible(node, "xlnx,axi-vdma-mm2s-channel") ||
     of_device_is_compatible(node, "xlnx,axi-dma-mm2s-channel") ||
     of_device_is_compatible(node, "xlnx,axi-cdma-channel")) {
  chan->direction = DMA_MEM_TO_DEV;
  chan->id = chan_id;
  chan->tdest = chan_id;

  chan->ctrl_offset = XILINX_DMA_MM2S_CTRL_OFFSET;
  if (xdev->dma_config->dmatype == XDMA_TYPE_VDMA) {
   chan->desc_offset = XILINX_VDMA_MM2S_DESC_OFFSET;
   chan->config.park = 1;

   if (xdev->flush_on_fsync == XILINX_DMA_FLUSH_BOTH ||
       xdev->flush_on_fsync == XILINX_DMA_FLUSH_MM2S)
    chan->flush_on_fsync = 1;
  }
 } else if (of_device_is_compatible(node,
        "xlnx,axi-vdma-s2mm-channel") ||
     of_device_is_compatible(node,
        "xlnx,axi-dma-s2mm-channel")) {
  chan->direction = DMA_DEV_TO_MEM;
  chan->id = chan_id;
  chan->tdest = chan_id - xdev->nr_channels;
  chan->has_vflip = of_property_read_bool(node,
     "xlnx,enable-vert-flip");
  if (chan->has_vflip) {
   chan->config.vflip_en = dma_read(chan,
    XILINX_VDMA_REG_ENABLE_VERTICAL_FLIP) &
    XILINX_VDMA_ENABLE_VERTICAL_FLIP;
  }

  chan->ctrl_offset = XILINX_DMA_S2MM_CTRL_OFFSET;
  if (xdev->dma_config->dmatype == XDMA_TYPE_VDMA) {
   chan->desc_offset = XILINX_VDMA_S2MM_DESC_OFFSET;
   chan->config.park = 1;

   if (xdev->flush_on_fsync == XILINX_DMA_FLUSH_BOTH ||
       xdev->flush_on_fsync == XILINX_DMA_FLUSH_S2MM)
    chan->flush_on_fsync = 1;
  }
 } else {
  dev_err(xdev->dev, "Invalid channel compatible node\n");
  return -EINVAL;
 }


 chan->irq = irq_of_parse_and_map(node, 0);
 err = request_irq(chan->irq, xilinx_dma_irq_handler, IRQF_SHARED,
     "xilinx-dma-controller", chan);
 if (err) {
  dev_err(xdev->dev, "unable to request IRQ %d\n", chan->irq);
  return err;
 }

 if (xdev->dma_config->dmatype == XDMA_TYPE_AXIDMA) {
  chan->start_transfer = xilinx_dma_start_transfer;
  chan->stop_transfer = xilinx_dma_stop_transfer;
 } else if (xdev->dma_config->dmatype == XDMA_TYPE_CDMA) {
  chan->start_transfer = xilinx_cdma_start_transfer;
  chan->stop_transfer = xilinx_cdma_stop_transfer;
 } else {
  chan->start_transfer = xilinx_vdma_start_transfer;
  chan->stop_transfer = xilinx_dma_stop_transfer;
 }


 if (xdev->dma_config->dmatype != XDMA_TYPE_VDMA) {
  if (dma_ctrl_read(chan, XILINX_DMA_REG_DMASR) &
      XILINX_DMA_DMASR_SG_MASK)
   chan->has_sg = 1;
  dev_dbg(chan->dev, "ch %d: SG %s\n", chan->id,
   chan->has_sg ? "enabled" : "disabled");
 }


 tasklet_init(&chan->tasklet, xilinx_dma_do_tasklet,
   (unsigned long)chan);





 chan->common.device = &xdev->common;

 list_add_tail(&chan->common.device_node, &xdev->common.channels);
 xdev->chan[chan->id] = chan;


 err = xilinx_dma_chan_reset(chan);
 if (err < 0) {
  dev_err(xdev->dev, "Reset channel failed\n");
  return err;
 }

 return 0;
}

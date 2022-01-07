
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dma_slave_config {int src_addr_width; int src_maxburst; int dst_addr_width; int dst_maxburst; int dst_addr; int src_addr; } ;
struct dma_chan {int dummy; } ;
struct coh901318_chan {int ctrl; int addr; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
typedef int dma_addr_t ;
struct TYPE_3__ {int burst_8bit; int burst_16bit; int burst_32bit; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int COH901318_CX_CTRL_DST_BUS_SIZE_16_BITS ;
 int COH901318_CX_CTRL_DST_BUS_SIZE_32_BITS ;
 int COH901318_CX_CTRL_DST_BUS_SIZE_8_BITS ;
 int COH901318_CX_CTRL_SRC_BUS_SIZE_16_BITS ;
 int COH901318_CX_CTRL_SRC_BUS_SIZE_32_BITS ;
 int COH901318_CX_CTRL_SRC_BUS_SIZE_8_BITS ;
 int COHC_2_DEV (struct coh901318_chan*) ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;



 int EINVAL ;
 TYPE_1__* burst_sizes ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*) ;
 struct coh901318_chan* to_coh901318_chan (struct dma_chan*) ;

__attribute__((used)) static int coh901318_dma_set_runtimeconfig(struct dma_chan *chan,
        struct dma_slave_config *config,
        enum dma_transfer_direction direction)
{
 struct coh901318_chan *cohc = to_coh901318_chan(chan);
 dma_addr_t addr;
 enum dma_slave_buswidth addr_width;
 u32 maxburst;
 u32 ctrl = 0;
 int i = 0;


 if (direction == DMA_DEV_TO_MEM) {
  addr = config->src_addr;
  addr_width = config->src_addr_width;
  maxburst = config->src_maxburst;
 } else if (direction == DMA_MEM_TO_DEV) {
  addr = config->dst_addr;
  addr_width = config->dst_addr_width;
  maxburst = config->dst_maxburst;
 } else {
  dev_err(COHC_2_DEV(cohc), "illegal channel mode\n");
  return -EINVAL;
 }

 dev_dbg(COHC_2_DEV(cohc), "configure channel for %d byte transfers\n",
  addr_width);
 switch (addr_width) {
 case 130:
  ctrl |=
   COH901318_CX_CTRL_SRC_BUS_SIZE_8_BITS |
   COH901318_CX_CTRL_DST_BUS_SIZE_8_BITS;

  while (i < ARRAY_SIZE(burst_sizes)) {
   if (burst_sizes[i].burst_8bit <= maxburst)
    break;
   i++;
  }

  break;
 case 129:
  ctrl |=
   COH901318_CX_CTRL_SRC_BUS_SIZE_16_BITS |
   COH901318_CX_CTRL_DST_BUS_SIZE_16_BITS;

  while (i < ARRAY_SIZE(burst_sizes)) {
   if (burst_sizes[i].burst_16bit <= maxburst)
    break;
   i++;
  }

  break;
 case 128:

  ctrl |=
   COH901318_CX_CTRL_SRC_BUS_SIZE_32_BITS |
   COH901318_CX_CTRL_DST_BUS_SIZE_32_BITS;

  while (i < ARRAY_SIZE(burst_sizes)) {
   if (burst_sizes[i].burst_32bit <= maxburst)
    break;
   i++;
  }

  break;
 default:
  dev_err(COHC_2_DEV(cohc),
   "bad runtimeconfig: alien address width\n");
  return -EINVAL;
 }

 ctrl |= burst_sizes[i].reg;
 dev_dbg(COHC_2_DEV(cohc),
  "selected burst size %d bytes for address width %d bytes, maxburst %d\n",
  burst_sizes[i].burst_8bit, addr_width, maxburst);

 cohc->addr = addr;
 cohc->ctrl = ctrl;

 return 0;
}

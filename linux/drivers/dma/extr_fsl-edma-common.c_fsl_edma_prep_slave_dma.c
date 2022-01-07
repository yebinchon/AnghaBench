
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int src_maxburst; int src_addr; int dst_maxburst; int dst_addr; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_7__ {TYPE_2__ chan; } ;
struct fsl_edma_chan {int dma_dir; int dma_dev_size; int dma_dev_addr; TYPE_4__ cfg; TYPE_3__ vchan; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_5__ {struct device* dev; } ;



 int DMA_FROM_DEVICE ;

 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int dma_map_resource (struct device*,int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int fsl_edma_unprep_slave_dma (struct fsl_edma_chan*) ;

__attribute__((used)) static bool fsl_edma_prep_slave_dma(struct fsl_edma_chan *fsl_chan,
        enum dma_transfer_direction dir)
{
 struct device *dev = fsl_chan->vchan.chan.device->dev;
 enum dma_data_direction dma_dir;
 phys_addr_t addr = 0;
 u32 size = 0;

 switch (dir) {
 case 128:
  dma_dir = DMA_FROM_DEVICE;
  addr = fsl_chan->cfg.dst_addr;
  size = fsl_chan->cfg.dst_maxburst;
  break;
 case 129:
  dma_dir = DMA_TO_DEVICE;
  addr = fsl_chan->cfg.src_addr;
  size = fsl_chan->cfg.src_maxburst;
  break;
 default:
  dma_dir = DMA_NONE;
  break;
 }


 if (fsl_chan->dma_dir == dma_dir)
  return 1;

 fsl_edma_unprep_slave_dma(fsl_chan);

 fsl_chan->dma_dev_addr = dma_map_resource(dev, addr, size, dma_dir, 0);
 if (dma_mapping_error(dev, fsl_chan->dma_dev_addr))
  return 0;
 fsl_chan->dma_dev_size = size;
 fsl_chan->dma_dir = dma_dir;

 return 1;
}

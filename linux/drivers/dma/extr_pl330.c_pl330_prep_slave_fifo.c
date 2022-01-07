
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* device; } ;
struct dma_pl330_chan {int dir; int burst_sz; int fifo_dma; int fifo_addr; TYPE_2__ chan; } ;
struct device {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {struct device* dev; } ;


 int dma_map_resource (struct device*,int ,int,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int pl330_dma_slave_map_dir (int) ;
 int pl330_unprep_slave_fifo (struct dma_pl330_chan*) ;

__attribute__((used)) static bool pl330_prep_slave_fifo(struct dma_pl330_chan *pch,
      enum dma_transfer_direction dir)
{
 struct device *dev = pch->chan.device->dev;
 enum dma_data_direction dma_dir = pl330_dma_slave_map_dir(dir);


 if (pch->dir == dma_dir)
  return 1;

 pl330_unprep_slave_fifo(pch);
 pch->fifo_dma = dma_map_resource(dev, pch->fifo_addr,
      1 << pch->burst_sz, dma_dir, 0);
 if (dma_mapping_error(dev, pch->fifo_dma))
  return 0;

 pch->dir = dma_dir;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ slave_addr; size_t xfer_size; } ;
struct rcar_dmac_chan_map {int dir; TYPE_4__ slave; int addr; } ;
struct TYPE_6__ {scalar_t__ slave_addr; size_t xfer_size; } ;
struct TYPE_5__ {scalar_t__ slave_addr; size_t xfer_size; } ;
struct rcar_dmac_chan {int index; TYPE_2__ dst; TYPE_1__ src; struct rcar_dmac_chan_map map; } ;
struct dma_chan {TYPE_3__* device; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_7__ {int dev; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EIO ;
 int dev_dbg (int ,char*,int ,size_t,scalar_t__*,int *,char*) ;
 int dev_err (int ,char*,int ,size_t,scalar_t__*) ;
 int dma_map_resource (int ,scalar_t__,size_t,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_resource (int ,int ,size_t,int,int ) ;
 struct rcar_dmac_chan* to_rcar_dmac_chan (struct dma_chan*) ;

__attribute__((used)) static int rcar_dmac_map_slave_addr(struct dma_chan *chan,
        enum dma_transfer_direction dir)
{
 struct rcar_dmac_chan *rchan = to_rcar_dmac_chan(chan);
 struct rcar_dmac_chan_map *map = &rchan->map;
 phys_addr_t dev_addr;
 size_t dev_size;
 enum dma_data_direction dev_dir;

 if (dir == DMA_DEV_TO_MEM) {
  dev_addr = rchan->src.slave_addr;
  dev_size = rchan->src.xfer_size;
  dev_dir = DMA_TO_DEVICE;
 } else {
  dev_addr = rchan->dst.slave_addr;
  dev_size = rchan->dst.xfer_size;
  dev_dir = DMA_FROM_DEVICE;
 }


 if (dev_addr == map->slave.slave_addr &&
     dev_size == map->slave.xfer_size &&
     dev_dir == map->dir)
  return 0;


 if (map->slave.xfer_size)
  dma_unmap_resource(chan->device->dev, map->addr,
       map->slave.xfer_size, map->dir, 0);
 map->slave.xfer_size = 0;


 map->addr = dma_map_resource(chan->device->dev, dev_addr, dev_size,
         dev_dir, 0);

 if (dma_mapping_error(chan->device->dev, map->addr)) {
  dev_err(chan->device->dev,
   "chan%u: failed to map %zx@%pap", rchan->index,
   dev_size, &dev_addr);
  return -EIO;
 }

 dev_dbg(chan->device->dev, "chan%u: map %zx@%pap to %pad dir: %s\n",
  rchan->index, dev_size, &dev_addr, &map->addr,
  dev_dir == DMA_TO_DEVICE ? "DMA_TO_DEVICE" : "DMA_FROM_DEVICE");

 map->slave.slave_addr = dev_addr;
 map->slave.xfer_size = dev_size;
 map->dir = dev_dir;

 return 0;
}

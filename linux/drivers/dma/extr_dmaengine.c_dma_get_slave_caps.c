
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_slave_caps {int cmd_pause; int cmd_resume; int cmd_terminate; int descriptor_reuse; int residue_granularity; int max_burst; scalar_t__ directions; int dst_addr_widths; int src_addr_widths; } ;
struct TYPE_2__ {int bits; } ;
struct dma_device {int device_terminate_all; int device_resume; int device_pause; int descriptor_reuse; int residue_granularity; int max_burst; scalar_t__ directions; int dst_addr_widths; int src_addr_widths; TYPE_1__ cap_mask; } ;
struct dma_chan {struct dma_device* device; } ;


 int DMA_CYCLIC ;
 int DMA_SLAVE ;
 int EINVAL ;
 int ENXIO ;
 scalar_t__ test_bit (int ,int ) ;

int dma_get_slave_caps(struct dma_chan *chan, struct dma_slave_caps *caps)
{
 struct dma_device *device;

 if (!chan || !caps)
  return -EINVAL;

 device = chan->device;


 if (!(test_bit(DMA_SLAVE, device->cap_mask.bits) ||
       test_bit(DMA_CYCLIC, device->cap_mask.bits)))
  return -ENXIO;






 if (!device->directions)
  return -ENXIO;

 caps->src_addr_widths = device->src_addr_widths;
 caps->dst_addr_widths = device->dst_addr_widths;
 caps->directions = device->directions;
 caps->max_burst = device->max_burst;
 caps->residue_granularity = device->residue_granularity;
 caps->descriptor_reuse = device->descriptor_reuse;
 caps->cmd_pause = !!device->device_pause;
 caps->cmd_resume = !!device->device_resume;
 caps->cmd_terminate = !!device->device_terminate_all;

 return 0;
}

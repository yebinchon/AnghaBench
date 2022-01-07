
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dst_addr_width; int src_addr_width; } ;
struct mdc_chan {TYPE_2__* mdma; TYPE_1__ config; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
struct TYPE_4__ {int bus_width; } ;


 int DMA_MEM_TO_DEV ;




 int EINVAL ;

__attribute__((used)) static int mdc_check_slave_width(struct mdc_chan *mchan,
     enum dma_transfer_direction dir)
{
 enum dma_slave_buswidth width;

 if (dir == DMA_MEM_TO_DEV)
  width = mchan->config.dst_addr_width;
 else
  width = mchan->config.src_addr_width;

 switch (width) {
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 if (width > mchan->mdma->bus_width)
  return -EINVAL;

 return 0;
}

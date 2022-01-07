
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {int dummy; } ;
typedef enum xgene_dma_ring_cfgsize { ____Placeholder_xgene_dma_ring_cfgsize } xgene_dma_ring_cfgsize ;


 int EINVAL ;





 int chan_err (struct xgene_dma_chan*,char*,int) ;

__attribute__((used)) static int xgene_dma_get_ring_size(struct xgene_dma_chan *chan,
       enum xgene_dma_ring_cfgsize cfgsize)
{
 int size;

 switch (cfgsize) {
 case 130:
  size = 0x200;
  break;
 case 131:
  size = 0x800;
  break;
 case 132:
  size = 0x4000;
  break;
 case 128:
  size = 0x10000;
  break;
 case 129:
  size = 0x80000;
  break;
 default:
  chan_err(chan, "Unsupported cfg ring size %d\n", cfgsize);
  return -EINVAL;
 }

 return size;
}

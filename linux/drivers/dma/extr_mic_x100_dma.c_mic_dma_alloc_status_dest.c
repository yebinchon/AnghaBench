
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_dma_chan {int * status_dest; int status_dest_micpa; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int L1_CACHE_BYTES ;
 int dma_map_single (struct device*,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 TYPE_1__* to_mbus_device (struct mic_dma_chan*) ;

__attribute__((used)) static int mic_dma_alloc_status_dest(struct mic_dma_chan *ch)
{
 struct device *dev = &to_mbus_device(ch)->dev;

 ch->status_dest = kzalloc(L1_CACHE_BYTES, GFP_KERNEL);
 if (!ch->status_dest)
  return -ENOMEM;
 ch->status_dest_micpa = dma_map_single(dev, ch->status_dest,
     L1_CACHE_BYTES, DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dev, ch->status_dest_micpa)) {
  kfree(ch->status_dest);
  ch->status_dest = ((void*)0);
  return -ENOMEM;
 }
 return 0;
}

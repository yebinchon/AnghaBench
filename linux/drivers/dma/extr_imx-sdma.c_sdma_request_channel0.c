
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_engine {int * channel; int bd0_phys; TYPE_1__* channel_control; int bd0; int dev; } ;
struct TYPE_2__ {int current_bd_ptr; int base_bd_ptr; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_NOWAIT ;
 int MXC_SDMA_DEFAULT_PRIORITY ;
 int PAGE_SIZE ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int sdma_set_channel_priority (int *,int ) ;

__attribute__((used)) static int sdma_request_channel0(struct sdma_engine *sdma)
{
 int ret = -EBUSY;

 sdma->bd0 = dma_alloc_coherent(sdma->dev, PAGE_SIZE, &sdma->bd0_phys,
     GFP_NOWAIT);
 if (!sdma->bd0) {
  ret = -ENOMEM;
  goto out;
 }

 sdma->channel_control[0].base_bd_ptr = sdma->bd0_phys;
 sdma->channel_control[0].current_bd_ptr = sdma->bd0_phys;

 sdma_set_channel_priority(&sdma->channel[0], MXC_SDMA_DEFAULT_PRIORITY);
 return 0;
out:

 return ret;
}

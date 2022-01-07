
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdma_engine {int dev; int channel_0_lock; struct sdma_buffer_descriptor* bd0; } ;
struct TYPE_2__ {int status; int count; int command; } ;
struct sdma_buffer_descriptor {int ext_buffer_addr; int buffer_addr; TYPE_1__ mode; } ;
typedef int dma_addr_t ;


 int BD_DONE ;
 int BD_EXTD ;
 int BD_WRAP ;
 int C0_SETPM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_free_coherent (int ,int,void*,int ) ;
 int memcpy (void*,void*,int) ;
 int sdma_run_channel0 (struct sdma_engine*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sdma_load_script(struct sdma_engine *sdma, void *buf, int size,
  u32 address)
{
 struct sdma_buffer_descriptor *bd0 = sdma->bd0;
 void *buf_virt;
 dma_addr_t buf_phys;
 int ret;
 unsigned long flags;

 buf_virt = dma_alloc_coherent(sdma->dev, size, &buf_phys, GFP_KERNEL);
 if (!buf_virt) {
  return -ENOMEM;
 }

 spin_lock_irqsave(&sdma->channel_0_lock, flags);

 bd0->mode.command = C0_SETPM;
 bd0->mode.status = BD_DONE | BD_WRAP | BD_EXTD;
 bd0->mode.count = size / 2;
 bd0->buffer_addr = buf_phys;
 bd0->ext_buffer_addr = address;

 memcpy(buf_virt, buf, size);

 ret = sdma_run_channel0(sdma);

 spin_unlock_irqrestore(&sdma->channel_0_lock, flags);

 dma_free_coherent(sdma->dev, size, buf_virt, buf_phys);

 return ret;
}

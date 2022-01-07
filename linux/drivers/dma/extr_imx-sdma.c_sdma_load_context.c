
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdma_engine {int channel_0_lock; int context_phys; int dev; struct sdma_buffer_descriptor* bd0; struct sdma_context_data* context; } ;
struct TYPE_3__ {int pc; } ;
struct sdma_context_data {int* gReg; TYPE_1__ channel_state; } ;
struct sdma_channel {int channel; int context_loaded; scalar_t__ direction; int pc_from_device; int device_to_device; int pc_to_pc; int pc_to_device; int watermark_level; int shp_addr; int per_addr; int* event_mask; struct sdma_engine* sdma; } ;
struct TYPE_4__ {int status; int count; int command; } ;
struct sdma_buffer_descriptor {int ext_buffer_addr; int buffer_addr; TYPE_2__ mode; } ;


 int BD_DONE ;
 int BD_EXTD ;
 int BD_WRAP ;
 int C0_SETDM ;
 scalar_t__ DMA_DEV_TO_DEV ;
 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_MEM ;
 int dev_dbg (int ,char*,int) ;
 int memset (struct sdma_context_data*,int ,int) ;
 int sdma_run_channel0 (struct sdma_engine*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sdma_load_context(struct sdma_channel *sdmac)
{
 struct sdma_engine *sdma = sdmac->sdma;
 int channel = sdmac->channel;
 int load_address;
 struct sdma_context_data *context = sdma->context;
 struct sdma_buffer_descriptor *bd0 = sdma->bd0;
 int ret;
 unsigned long flags;

 if (sdmac->context_loaded)
  return 0;

 if (sdmac->direction == DMA_DEV_TO_MEM)
  load_address = sdmac->pc_from_device;
 else if (sdmac->direction == DMA_DEV_TO_DEV)
  load_address = sdmac->device_to_device;
 else if (sdmac->direction == DMA_MEM_TO_MEM)
  load_address = sdmac->pc_to_pc;
 else
  load_address = sdmac->pc_to_device;

 if (load_address < 0)
  return load_address;

 dev_dbg(sdma->dev, "load_address = %d\n", load_address);
 dev_dbg(sdma->dev, "wml = 0x%08x\n", (u32)sdmac->watermark_level);
 dev_dbg(sdma->dev, "shp_addr = 0x%08x\n", sdmac->shp_addr);
 dev_dbg(sdma->dev, "per_addr = 0x%08x\n", sdmac->per_addr);
 dev_dbg(sdma->dev, "event_mask0 = 0x%08x\n", (u32)sdmac->event_mask[0]);
 dev_dbg(sdma->dev, "event_mask1 = 0x%08x\n", (u32)sdmac->event_mask[1]);

 spin_lock_irqsave(&sdma->channel_0_lock, flags);

 memset(context, 0, sizeof(*context));
 context->channel_state.pc = load_address;




 context->gReg[0] = sdmac->event_mask[1];
 context->gReg[1] = sdmac->event_mask[0];
 context->gReg[2] = sdmac->per_addr;
 context->gReg[6] = sdmac->shp_addr;
 context->gReg[7] = sdmac->watermark_level;

 bd0->mode.command = C0_SETDM;
 bd0->mode.status = BD_DONE | BD_WRAP | BD_EXTD;
 bd0->mode.count = sizeof(*context) / 4;
 bd0->buffer_addr = sdma->context_phys;
 bd0->ext_buffer_addr = 2048 + (sizeof(*context) / 4) * channel;
 ret = sdma_run_channel0(sdma);

 spin_unlock_irqrestore(&sdma->channel_0_lock, flags);

 sdmac->context_loaded = 1;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ tx_block; } ;
struct TYPE_3__ {int dev; } ;
struct slimpro_i2c_dev {int dev; int rd_complete; TYPE_2__ mbox_client; int dma_buffer; TYPE_1__ adapter; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int SLIMPRO_IIC_BUS ;
 int SLIMPRO_IIC_ENCODE_ADDR (int) ;
 int SLIMPRO_IIC_ENCODE_FLAG_BUFADDR ;
 int SLIMPRO_IIC_ENCODE_MSG (int ,int,int ,int,int,int) ;
 int SLIMPRO_IIC_ENCODE_UPPER_BUFADDR (scalar_t__) ;
 int SLIMPRO_IIC_WRITE ;
 int dev_err (int *,char*,int ) ;
 scalar_t__ dma_map_single (int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,int,int ) ;
 int memcpy (int ,void*,int) ;
 int reinit_completion (int *) ;
 int slimpro_i2c_send_msg (struct slimpro_i2c_dev*,int*,int*) ;

__attribute__((used)) static int slimpro_i2c_blkwr(struct slimpro_i2c_dev *ctx, u32 chip,
        u32 addr, u32 addrlen, u32 protocol, u32 writelen,
        void *data)
{
 dma_addr_t paddr;
 u32 msg[3];
 int rc;

 memcpy(ctx->dma_buffer, data, writelen);
 paddr = dma_map_single(ctx->dev, ctx->dma_buffer, writelen,
          DMA_TO_DEVICE);
 if (dma_mapping_error(ctx->dev, paddr)) {
  dev_err(&ctx->adapter.dev, "Error in mapping dma buffer %p\n",
   ctx->dma_buffer);
  return -ENOMEM;
 }

 msg[0] = SLIMPRO_IIC_ENCODE_MSG(SLIMPRO_IIC_BUS, chip, SLIMPRO_IIC_WRITE,
     protocol, addrlen, writelen);
 msg[1] = SLIMPRO_IIC_ENCODE_FLAG_BUFADDR |
   SLIMPRO_IIC_ENCODE_UPPER_BUFADDR(paddr) |
   SLIMPRO_IIC_ENCODE_ADDR(addr);
 msg[2] = (u32)paddr;

 if (ctx->mbox_client.tx_block)
  reinit_completion(&ctx->rd_complete);

 rc = slimpro_i2c_send_msg(ctx, msg, msg);

 dma_unmap_single(ctx->dev, paddr, writelen, DMA_TO_DEVICE);
 return rc;
}

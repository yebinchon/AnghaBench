
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_4__ {int length; int addr; int lkey; } ;
struct iser_mem_reg {TYPE_2__ sge; scalar_t__ rkey; } ;
struct iser_device {TYPE_1__* pd; } ;
struct iser_data_buf {struct scatterlist* sg; } ;
struct TYPE_3__ {int flags; scalar_t__ unsafe_global_rkey; int local_dma_lkey; } ;


 int IB_PD_UNSAFE_GLOBAL_RKEY ;
 int iser_dbg (char*,int ,scalar_t__,int ,int ) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static int
iser_reg_dma(struct iser_device *device, struct iser_data_buf *mem,
      struct iser_mem_reg *reg)
{
 struct scatterlist *sg = mem->sg;

 reg->sge.lkey = device->pd->local_dma_lkey;





 if (device->pd->flags & IB_PD_UNSAFE_GLOBAL_RKEY)
  reg->rkey = device->pd->unsafe_global_rkey;
 else
  reg->rkey = 0;
 reg->sge.addr = sg_dma_address(&sg[0]);
 reg->sge.length = sg_dma_len(&sg[0]);

 iser_dbg("Single DMA entry: lkey=0x%x, rkey=0x%x, addr=0x%llx,"
   " length=0x%x\n", reg->sge.lkey, reg->rkey,
   reg->sge.addr, reg->sge.length);

 return 0;
}

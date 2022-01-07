
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct stm32_dma_sg_req {size_t len; } ;
struct stm32_dma_desc {int num_sgs; TYPE_2__* sg_req; } ;
struct stm32_dma_chan {size_t next_sg; size_t mem_burst; size_t mem_width; TYPE_1__* desc; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {size_t num_sgs; int cyclic; struct stm32_dma_sg_req* sg_req; } ;


 size_t stm32_dma_get_remaining_bytes (struct stm32_dma_chan*) ;
 int stm32_dma_is_current_sg (struct stm32_dma_chan*) ;

__attribute__((used)) static size_t stm32_dma_desc_residue(struct stm32_dma_chan *chan,
         struct stm32_dma_desc *desc,
         u32 next_sg)
{
 u32 modulo, burst_size;
 u32 residue;
 u32 n_sg = next_sg;
 struct stm32_dma_sg_req *sg_req = &chan->desc->sg_req[chan->next_sg];
 int i;
 residue = stm32_dma_get_remaining_bytes(chan);

 if (!stm32_dma_is_current_sg(chan)) {
  n_sg++;
  if (n_sg == chan->desc->num_sgs)
   n_sg = 0;
  residue = sg_req->len;
 }
 if (!chan->desc->cyclic || n_sg != 0)
  for (i = n_sg; i < desc->num_sgs; i++)
   residue += desc->sg_req[i].len;

 if (!chan->mem_burst)
  return residue;

 burst_size = chan->mem_burst * chan->mem_width;
 modulo = residue % burst_size;
 if (modulo)
  residue = residue - modulo + burst_size;

 return residue;
}

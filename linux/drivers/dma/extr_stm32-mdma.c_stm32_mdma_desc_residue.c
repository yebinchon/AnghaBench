
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_mdma_hwdesc {int cbndtr; } ;
struct stm32_mdma_device {int dummy; } ;
struct stm32_mdma_desc {int count; TYPE_1__* node; } ;
struct stm32_mdma_chan {int mem_burst; int mem_width; int id; } ;
struct TYPE_2__ {struct stm32_mdma_hwdesc* hwdesc; } ;


 int STM32_MDMA_CBNDTR (int ) ;
 scalar_t__ STM32_MDMA_CBNDTR_BNDT (int ) ;
 int STM32_MDMA_CBNDTR_BNDT_MASK ;
 struct stm32_mdma_device* stm32_mdma_get_dev (struct stm32_mdma_chan*) ;
 int stm32_mdma_read (struct stm32_mdma_device*,int ) ;

__attribute__((used)) static size_t stm32_mdma_desc_residue(struct stm32_mdma_chan *chan,
          struct stm32_mdma_desc *desc,
          u32 curr_hwdesc)
{
 struct stm32_mdma_device *dmadev = stm32_mdma_get_dev(chan);
 struct stm32_mdma_hwdesc *hwdesc = desc->node[0].hwdesc;
 u32 cbndtr, residue, modulo, burst_size;
 int i;

 residue = 0;
 for (i = curr_hwdesc + 1; i < desc->count; i++) {
  hwdesc = desc->node[i].hwdesc;
  residue += STM32_MDMA_CBNDTR_BNDT(hwdesc->cbndtr);
 }
 cbndtr = stm32_mdma_read(dmadev, STM32_MDMA_CBNDTR(chan->id));
 residue += cbndtr & STM32_MDMA_CBNDTR_BNDT_MASK;

 if (!chan->mem_burst)
  return residue;

 burst_size = chan->mem_burst * chan->mem_width;
 modulo = residue % burst_size;
 if (modulo)
  residue = residue - modulo + burst_size;

 return residue;
}

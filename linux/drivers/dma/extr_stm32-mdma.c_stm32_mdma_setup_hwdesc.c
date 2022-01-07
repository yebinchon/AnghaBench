
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_mdma_hwdesc {int ctcr; int cbndtr; int ctbr; scalar_t__ clar; int cmdr; int cmar; scalar_t__ cbrur; void* cdar; void* csar; } ;
struct stm32_mdma_desc {TYPE_1__* node; } ;
struct stm32_mdma_chan_config {int mask_data; int mask_addr; } ;
struct stm32_mdma_chan {struct stm32_mdma_chan_config chan_config; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef void* dma_addr_t ;
struct TYPE_2__ {scalar_t__ hwdesc_phys; struct stm32_mdma_hwdesc* hwdesc; } ;


 int STM32_MDMA_CBNDTR_BNDT (int) ;
 int STM32_MDMA_CBNDTR_BNDT_MASK ;
 int STM32_MDMA_CBNDTR_BRC_MK ;
 int STM32_MDMA_CBNDTR_BRDUM ;
 int STM32_MDMA_CBNDTR_BRSUM ;
 int stm32_mdma_dump_hwdesc (struct stm32_mdma_chan*,TYPE_1__*) ;

__attribute__((used)) static void stm32_mdma_setup_hwdesc(struct stm32_mdma_chan *chan,
        struct stm32_mdma_desc *desc,
        enum dma_transfer_direction dir, u32 count,
        dma_addr_t src_addr, dma_addr_t dst_addr,
        u32 len, u32 ctcr, u32 ctbr, bool is_last,
        bool is_first, bool is_cyclic)
{
 struct stm32_mdma_chan_config *config = &chan->chan_config;
 struct stm32_mdma_hwdesc *hwdesc;
 u32 next = count + 1;

 hwdesc = desc->node[count].hwdesc;
 hwdesc->ctcr = ctcr;
 hwdesc->cbndtr &= ~(STM32_MDMA_CBNDTR_BRC_MK |
   STM32_MDMA_CBNDTR_BRDUM |
   STM32_MDMA_CBNDTR_BRSUM |
   STM32_MDMA_CBNDTR_BNDT_MASK);
 hwdesc->cbndtr |= STM32_MDMA_CBNDTR_BNDT(len);
 hwdesc->csar = src_addr;
 hwdesc->cdar = dst_addr;
 hwdesc->cbrur = 0;
 hwdesc->ctbr = ctbr;
 hwdesc->cmar = config->mask_addr;
 hwdesc->cmdr = config->mask_data;

 if (is_last) {
  if (is_cyclic)
   hwdesc->clar = desc->node[0].hwdesc_phys;
  else
   hwdesc->clar = 0;
 } else {
  hwdesc->clar = desc->node[next].hwdesc_phys;
 }

 stm32_mdma_dump_hwdesc(chan, &desc->node[count]);
}

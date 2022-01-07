
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxad_desc_sw {int nb_desc; void* first; struct pxad_desc_hw** hw_desc; scalar_t__ cyclic; } ;
struct pxad_desc_hw {int dcmd; void* ddadr; void* dtadr; void* dsadr; } ;
typedef void* dma_addr_t ;


 void* DDADR_STOP ;
 unsigned long DMA_PREP_INTERRUPT ;
 int PXA_DCMD_BURST32 ;
 int PXA_DCMD_ENDIRQEN ;
 int PXA_DCMD_LENGTH ;
 int PXA_DCMD_WIDTH4 ;

__attribute__((used)) static void set_updater_desc(struct pxad_desc_sw *sw_desc,
        unsigned long flags)
{
 struct pxad_desc_hw *updater =
  sw_desc->hw_desc[sw_desc->nb_desc - 1];
 dma_addr_t dma = sw_desc->hw_desc[sw_desc->nb_desc - 2]->ddadr;

 updater->ddadr = DDADR_STOP;
 updater->dsadr = dma;
 updater->dtadr = dma + 8;
 updater->dcmd = PXA_DCMD_WIDTH4 | PXA_DCMD_BURST32 |
  (PXA_DCMD_LENGTH & sizeof(u32));
 if (flags & DMA_PREP_INTERRUPT)
  updater->dcmd |= PXA_DCMD_ENDIRQEN;
 if (sw_desc->cyclic)
  sw_desc->hw_desc[sw_desc->nb_desc - 2]->ddadr = sw_desc->first;
}

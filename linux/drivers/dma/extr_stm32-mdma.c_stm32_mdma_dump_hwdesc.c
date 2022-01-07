
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_mdma_desc_node {TYPE_1__* hwdesc; int hwdesc_phys; } ;
struct stm32_mdma_chan {int dummy; } ;
struct TYPE_2__ {int * cmdr; int * cmar; int * ctbr; int * clar; int * cbrur; int * cdar; int * csar; int * cbndtr; int * ctcr; } ;


 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_dbg (int ,char*,int *) ;

__attribute__((used)) static void stm32_mdma_dump_hwdesc(struct stm32_mdma_chan *chan,
       struct stm32_mdma_desc_node *node)
{
 dev_dbg(chan2dev(chan), "hwdesc:  %pad\n", &node->hwdesc_phys);
 dev_dbg(chan2dev(chan), "CTCR:    0x%08x\n", node->hwdesc->ctcr);
 dev_dbg(chan2dev(chan), "CBNDTR:  0x%08x\n", node->hwdesc->cbndtr);
 dev_dbg(chan2dev(chan), "CSAR:    0x%08x\n", node->hwdesc->csar);
 dev_dbg(chan2dev(chan), "CDAR:    0x%08x\n", node->hwdesc->cdar);
 dev_dbg(chan2dev(chan), "CBRUR:   0x%08x\n", node->hwdesc->cbrur);
 dev_dbg(chan2dev(chan), "CLAR:    0x%08x\n", node->hwdesc->clar);
 dev_dbg(chan2dev(chan), "CTBR:    0x%08x\n", node->hwdesc->ctbr);
 dev_dbg(chan2dev(chan), "CMAR:    0x%08x\n", node->hwdesc->cmar);
 dev_dbg(chan2dev(chan), "CMDR:    0x%08x\n\n", node->hwdesc->cmdr);
}

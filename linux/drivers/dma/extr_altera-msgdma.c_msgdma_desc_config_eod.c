
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_extended_desc {int control; } ;


 int MSGDMA_DESC_CTL_TR_COMP_IRQ ;

__attribute__((used)) static void msgdma_desc_config_eod(struct msgdma_extended_desc *desc)
{
 desc->control |= MSGDMA_DESC_CTL_TR_COMP_IRQ;
}

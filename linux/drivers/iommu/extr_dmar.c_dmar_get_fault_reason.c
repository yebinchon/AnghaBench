
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ARRAY_SIZE (char const**) ;
 int DMA_REMAP ;
 int INTR_REMAP ;
 int UNKNOWN ;
 char const** dma_remap_fault_reasons ;
 char const** dma_remap_sm_fault_reasons ;
 char const** irq_remap_fault_reasons ;

__attribute__((used)) static const char *dmar_get_fault_reason(u8 fault_reason, int *fault_type)
{
 if (fault_reason >= 0x20 && (fault_reason - 0x20 <
     ARRAY_SIZE(irq_remap_fault_reasons))) {
  *fault_type = INTR_REMAP;
  return irq_remap_fault_reasons[fault_reason - 0x20];
 } else if (fault_reason >= 0x30 && (fault_reason - 0x30 <
   ARRAY_SIZE(dma_remap_sm_fault_reasons))) {
  *fault_type = DMA_REMAP;
  return dma_remap_sm_fault_reasons[fault_reason - 0x30];
 } else if (fault_reason < ARRAY_SIZE(dma_remap_fault_reasons)) {
  *fault_type = DMA_REMAP;
  return dma_remap_fault_reasons[fault_reason];
 } else {
  *fault_type = UNKNOWN;
  return "Unknown";
 }
}
